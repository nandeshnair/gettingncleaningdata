##The following steps need to be followed the obtain a tidy data set for the activity recognition data collected using smartphone sensors -
1. Load the plyr library.
2. Load the file "activity_labels.txt" containing the activity labels and corresponding activity names.
3. Load the file "features.txt" containing the names of all features to be used as column headers.
4. Load the training data set files: "subject_train.txt", "X_train.txt" and "y_train.txt" containing the Training subject data, Sensor Data collected during training and Training activity labels respectively.
5. Load the testing data set files: "subject_test.txt", "X_test.txt" and "y_test.txt" containing the Testing subject data, Sensor Data collected during testing and Testing activity labels respectively.
6. Merge the training and testing data sets and assign appropriate column headers.
7. Determine activity names from activity label data and assign the activity names to the Merged data set obtained in Step 5.
8. Subset the data frame for mean and standard deviation columns.
9. Tidy the column names to make them more meaningful and easily understandable.
10. Tidy the data set with the average of each variable for each activity and each subject. (Group the data based on activity and subject).
11. Sort the resulting data set by the subject column and then by the activity column.
12. Write the results to a file.
