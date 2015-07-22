# CodeBook

## Data Source
The data described in this *CodeBook* represent data collected from the accelerometers from a Samsung Galaxy S smartphone. [1]

A full description is available at the site where the data was obtained:

- [Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "Data Set") 
- [Data Folder](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/ "Data Folder")
- [Data Set Description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones# "Data Set Description")

## Variables
The features selected for the original data come from the accelerometer and gyroscope ('Gyroscope') 3-axial (XYZ) raw signals. These time domain signals (prefix 'Time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

Similarly, the acceleration ('Accelerometer') signal was then separated into body ('Body') and gravity ('Gravity')acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals ('Jerk'). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm ('Magnitude'). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing ('Frequency').

The subjects ('Subject') who carried out the experiment are represented as a number from 1 to 30.

The activity labels ('Activity') consist of: WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING

Hereafter you can find a list, which contains all the variables that are part of the data set:

- Subject
- Activity
- TimeBodyAccelerometerMean-X
- TimeBodyAccelerometerMean-Y
- TimeBodyAccelerometerMean-Z
- TimeGravityAccelerometerMean-X
- TimeGravityAccelerometerMean-Y
- TimeGravityAccelerometerMean-Z
- TimeBodyAccelerometerJerkMean-X
- TimeBodyAccelerometerJerkMean-Y
- TimeBodyAccelerometerJerkMean-Z
- TimeBodyGyroscopeMean-X
- TimeBodyGyroscopeMean-Y
- TimeBodyGyroscopeMean-Z
- TimeBodyGyroscopeJerkMean-X
- TimeBodyGyroscopeJerkMean-Y
- TimeBodyGyroscopeJerkMean-Z
- TimeBodyAccelerometerMagnitudeMean
- TimeGravityAccelerometerMagnitudeMean
- TimeBodyAccelerometerJerkMagnitudeMean
- TimeBodyGyroscopeMagnitudeMean
- TimeBodyGyroscopeJerkMagnitudeMean
- FrequencyBodyAccelerometerMean-X
- FrequencyBodyAccelerometerMean-Y
- FrequencyBodyAccelerometerMean-Z
- FrequencyBodyAccelerometerMeanFrequency-X
- FrequencyBodyAccelerometerMeanFrequency-Y
- FrequencyBodyAccelerometerMeanFrequency-Z
- FrequencyBodyAccelerometerJerkMean-X
- FrequencyBodyAccelerometerJerkMean-Y
- FrequencyBodyAccelerometerJerkMean-Z
- FrequencyBodyAccelerometerJerkMeanFrequency-X
- FrequencyBodyAccelerometerJerkMeanFrequency-Y
- FrequencyBodyAccelerometerJerkMeanFrequency-Z
- FrequencyBodyGyroscopeMean-X
- FrequencyBodyGyroscopeMean-Y 
- FrequencyBodyGyroscopeMean-Z
- FrequencyBodyGyroscopeMeanFrequency-X
- FrequencyBodyGyroscopeMeanFrequency-Y
- FrequencyBodyGyroscopeMeanFrequency-Z
- FrequencyBodyAccelerometerMagnitudeMean
- FrequencyBodyAccelerometerMagnitudeMeanFrequency
- FrequencyBodyAccelerometerJerkMagnitudeMean
- FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency
- FrequencyBodyGyroscopeMagnitudeMean
- FrequencyBodyGyroscopeMagnitudeMeanFrequency
- FrequencyBodyGyroscopeJerkMagnitudeMean
- FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency
- TimeBodyAccelerometerSTD-X
- TimeBodyAccelerometerSTD-Y
- TimeBodyAccelerometerSTD-Z
- TimeGravityAccelerometerSTD-X
- TimeGravityAccelerometerSTD-Y
- TimeGravityAccelerometerSTD-Z
- TimeBodyAccelerometerJerkSTD-X
- TimeBodyAccelerometerJerkSTD-Y
- TimeBodyAccelerometerJerkSTD-Z
- TimeBodyGyroscopeSTD-X
- TimeBodyGyroscopeSTD-Y
- TimeBodyGyroscopeSTD-Z
- TimeBodyGyroscopeJerkSTD-X
- TimeBodyGyroscopeJerkSTD-Y
- TimeBodyGyroscopeJerkSTD-Z
- TimeBodyAccelerometerMagnitudeSTD
- TimeGravityAccelerometerMagnitudeSTD
- TimeBodyAccelerometerJerkMagnitudeSTD
- TimeBodyGyroscopeMagnitudeSTD
- TimeBodyGyroscopeJerkMagnitudeSTD
- FrequencyBodyAccelerometerSTD-X
- FrequencyBodyAccelerometerSTD-Y
- FrequencyBodyAccelerometerSTD-Z
- FrequencyBodyAccelerometerJerkSTD-X
- FrequencyBodyAccelerometerJerkSTD-Y
- FrequencyBodyAccelerometerJerkSTD-Z
- FrequencyBodyGyroscopeSTD-X
- FrequencyBodyGyroscopeSTD-Y
- FrequencyBodyGyroscopeSTD-Z
- FrequencyBodyAccelerometerMagnitudeSTD
- FrequencyBodyAccelerometerJerkMagnitudeSTD
- FrequencyBodyGyroscopeMagnitudeSTD
- FrequencyBodyGyroscopeJerkMagnitudeSTD

## Tidy Data Set
The data set created (*subject_activity_means.txt*) contains an independent tidy data set with the average of each variable for each activity and each subject.

## References
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.