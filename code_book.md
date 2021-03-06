
This file describes all data variables used in the result data set obtained after the analysis.
* mean(): Mean value
* std(): Standard deviation
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency

###The following variables contain the mean and standard deviation data of the Accelerometer and Gyroscope sensors.
###This data was captured at a frequency of 50 Hz. 

####A. Variables 1 and 2 are
1. subject - The subject Id of the person who activiy data was measured. (Range 1 - 30)
2. activity - The type of activity performed (Laying, Sitting, Standing, Walking, Walking downstairs, Walking upstairs)

####B. The time prefix in the following variables indicates time domain signals. Variables 1-10 have three components each (X,Y,Z). 
1. timeBodyAccelerometer.mean
2. timeBodyAccelerometer.std
3. timeGravityAccelerometer.mean
4. timeGravityAccelerometer.std
5. timeBodyAccelerometerJerk.mean
6. timeBodyAccelerometerJerk.std
7. timeBodyGyroscope.mean
8. timeBodyGyroscope.std
9. timeBodyGyroscopeJerk.mean
10. timeBodyGyroscopeJerk.std
11. timeBodyAccelerometerMagnitude.mean
12. timeBodyAccelerometerMagnitude.std
13. timeGravityAccelerometerMagnitude.mean
14. timeGravityAccelerometerMagnitude.std
15. timeBodyAccelerometerJerkMagnitude.mean
16. timeBodyAccelerometerJerkMagnitude.std
17. timeBodyGyroscopeMagnitude.mean
18. timeBodyGyroscopeMagnitude.std
19. timeBodyGyroscopeJerkMagnitude.mean
20. timeBodyGyroscopeJerkMagnitude.std

####C. The frequency prefix in the following variables indicates frequency domain signals. Variables 1-6 have three components each (X,Y,Z). 

1. frequencyBodyAccelerometer.mean
2. frequencyBodyAccelerometer.std
3. frequencyBodyAccelerometerJerk.mean
4. frequencyBodyAccelerometerJerk.std
5. frequencyBodyGyroscope.mean
6. frequencyBodyGyroscope.std
7. frequencyBodyAccelerometerMagnitude.mean
8. frequencyBodyAccelerometerMagnitude.std
9. frequencyBodyAccelerometerJerkMagnitude.mean
10. frequencyBodyAccelerometerJerkMagnitude.std
11. frequencyBodyGyroscopeMagnitude.mean
12. frequencyBodyGyroscopeMagnitude.std
13. frequencyBodyGyroscopeJerkMagnitude.mean
14. frequencyBodyGyroscopeJerkMagnitude.std

####D. The followind files bundled along with the data set contain additional information
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
