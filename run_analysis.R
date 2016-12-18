library(dplyr)
#Zip file archive URL
dataZipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFileName <- "Dataset.zip"

#Check if the zip archive has been downloaded
if (!file.exists(zipFileName)) {
  download.file(dataZipUrl, destfile = zipFileName)
}

#Check if the downloaded zip archive has been unzipped
if(!file.exists("~/UCI HAR Dataset"))
{
  unzip(zipFileName)
}

#Read activity labels
activity_labels <- read.table("~/UCI HAR Dataset/activity_labels.txt", header = FALSE)
#Assign column headers
colnames(activity_labels) <- c("activity_id", "activity_name")

#Read feature names
data_column_names <- read.table("~/UCI HAR Dataset/features.txt", header = FALSE)
#Assign column headers
colnames(data_column_names) <- c("column_id","column_name")

#Read Training data (Subject, activity, Sensor data)
training_subject <- read.table("~/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
training_activity_data <- read.table("~/UCI HAR Dataset/train/y_train.txt", header = FALSE)
training_sensor_data <- read.table("~/UCI HAR Dataset/train/X_train.txt", header = FALSE)
#Merge training data
training_data<- data.frame(training_subject, training_activity_data, training_sensor_data)

#Read Testing data (Subject, activity, Sensor data)
testing_subject <- read.table("~/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
testing_activity_data <- read.table("~/UCI HAR Dataset/test/y_test.txt", header = FALSE)
testing_sensor_data <- read.table("~/UCI HAR Dataset/test/X_test.txt", header = FALSE)
#Merge testing data
testing_data <- data.frame(testing_subject, testing_activity_data, testing_sensor_data)

#Merge training and test data
merged_data <- rbind(training_data, testing_data)   
#Assign column headers
names(merged_data) <- c(c("subject", "activity"), as.character(data_column_names$column_name))

#Determine activity names from activity labels
activity_labels <- as.character(activity_labels$activity_name)
merged_data$activity <- activity_labels[merged_data$activity]

#Subset the data frame for mean and standard deviation columns
dataSubset <- merged_data[grepl("subject|activity|mean\\(|std\\(",colnames(merged_data))]

#Tidy the column names
names(dataSubset) <- gsub("^t","time", names(dataSubset))
names(dataSubset) <- gsub("^f","frequency", names(dataSubset))
names(dataSubset) <- gsub("*[Aa]cc","Accelerometer", names(dataSubset))
names(dataSubset) <- gsub("*[Gg]yro","Gyroscope", names(dataSubset))
names(dataSubset) <- gsub("*[Bb]ody[Bb]ody","Body", names(dataSubset))
names(dataSubset) <- gsub("*[Mg]ag","Magnitude", names(dataSubset))

#Tidy data set with the average of each variable for each activity and each subject
tidy_data<-aggregate(. ~ subject + activity, dataSubset, mean)
tidy_data<-arrange(tidy_data, subject, activity)

write.table(tidy_data, file = "Nandesh_Nair_Output.txt", row.names = FALSE)