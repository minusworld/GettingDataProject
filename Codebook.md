---
title: "codebook"
author: "Grayson Hardaway"
date: "Thursday, July 24, 2014"
output: html_document
---

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The actual features for this dataset are calculations of the mean and standard deviation of the sampled signal.
For mean calculations, the feature name contains the word "mean."
For standard deviation calculations, the feature name contains the string "std"

The dataset also contains two string values, "activity" and "subject" to denote the type of activity being performed and the subject performing the activity, respectively, during the signal collection.

The full set of features and their equivalent R type is listed here:

tBodyAcc.mean...X  numeric
tBodyAcc.mean...Y	numeric
tBodyAcc.mean...Z	numeric
tGravityAcc.mean...X	numeric
tGravityAcc.mean...Y	numeric
tGravityAcc.mean...Z	numeric
tBodyAccJerk.mean...X	numeric
tBodyAccJerk.mean...Y	numeric
tBodyAccJerk.mean...Z	numeric
tBodyGyro.mean...X	numeric
tBodyGyro.mean...Y	numeric
tBodyGyro.mean...Z	numeric
tBodyGyroJerk.mean...X	numeric
tBodyGyroJerk.mean...Y	numeric
tBodyGyroJerk.mean...Z	numeric
tBodyAccMag.mean..	numeric
tGravityAccMag.mean..	numeric
tBodyAccJerkMag.mean..	numeric
tBodyGyroMag.mean..	numeric
tBodyGyroJerkMag.mean..	numeric
fBodyAcc.mean...X	numeric
fBodyAcc.mean...Y	numeric
fBodyAcc.mean...Z	numeric
fBodyAccJerk.mean...X	numeric
fBodyAccJerk.mean...Y	numeric
fBodyAccJerk.mean...Z	numeric
fBodyGyro.mean...X	numeric
fBodyGyro.mean...Y	numeric
fBodyGyro.mean...Z	numeric
fBodyAccMag.mean..	numeric
fBodyBodyAccJerkMag.mean..	numeric
fBodyBodyGyroMag.mean..	numeric
fBodyBodyGyroJerkMag.mean..	numeric
tBodyAcc.std...X	numeric
tBodyAcc.std...Y	numeric
tBodyAcc.std...Z	numeric
tGravityAcc.std...X	numeric
tGravityAcc.std...Y	numeric
tGravityAcc.std...Z	numeric
tBodyAccJerk.std...X	numeric
tBodyAccJerk.std...Y	numeric
tBodyAccJerk.std...Z	numeric
tBodyGyro.std...X	numeric
tBodyGyro.std...Y	numeric
tBodyGyro.std...Z	numeric
tBodyGyroJerk.std...X	numeric
tBodyGyroJerk.std...Y	numeric
tBodyGyroJerk.std...Z	numeric
tBodyAccMag.std..	numeric
tGravityAccMag.std..	numeric
tBodyAccJerkMag.std..	numeric
tBodyGyroMag.std..	numeric
tBodyGyroJerkMag.std..	numeric
fBodyAcc.std...X	numeric
fBodyAcc.std...Y	numeric
fBodyAcc.std...Z	numeric
fBodyAccJerk.std...X	numeric
fBodyAccJerk.std...Y	numeric
fBodyAccJerk.std...Z	numeric
fBodyGyro.std...X	numeric
fBodyGyro.std...Y	numeric
fBodyGyro.std...Z	numeric
fBodyAccMag.std..	numeric
fBodyBodyAccJerkMag.std..	numeric
fBodyBodyGyroMag.std..	numeric
fBodyBodyGyroJerkMag.std..	numeric
activity	character
subject	character
