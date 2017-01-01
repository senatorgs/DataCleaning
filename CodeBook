==========================================================================
Gregg Stratton
Johns Hopkins University - Getting and Cleaning Data Course Project
Codebook
==========================================================================

==========================================================================
Codebook of Variables used in Run_Analysis.R
==========================================================================

Subject - Subject identification number (takes values from 1 to 30)

Activity - Activity description (Laying, Sitting, Standing, Walking, Walking_Downstairs, Walking_Upstairs)

MeanValue - Mean value of each variable, for each subject, for each activity

Variable - 66 variables being measured that are a mean or standard deviation. The naming of the 66 variables can be decomposed as follows:

   1) Time/Frequency Domain:
   *  A leading 'f' indicates the variable was measured in the frequency domain using a Fast Fourier Transform (FFT) of a corresponding time domain variable
   *  A leading 't' indicates the variable was measured in the time domain.

   2) Body/Gravity Component:
   *  Variables containing just "BodyAcc" indicate it is the body acceleration signal
   *  Variables containing just "GravityAcc" indicate it is the gravity acceleration signal
   
   3) Jerk Signal:
   * Variables containing "BodyAccJerk" indicate it is the Jerk signal derived from the body linear acceleration and angular velocity

   4) Magnitude:
   * Variables containing "AccMag" indicate that it is a measurement of the magnitude of the three-dimensional signal calculated using the Euclidean norm 

   5) Mean / Standard Deviation:
   * Variables containing 'mean()' indicate the measure is a mean value
   * Variables containing 'std()' indicate the measure is a standard deviation

   6) Variables containing 'X', 'Y', or 'Z' indicate the axial direction

fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccMag-mean()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyBodyAccJerkMag-mean()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroMag-mean()
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
tBodyAccJerkMag-mean()
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccMag-mean()
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyGyroJerkMag-mean()
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroMag-mean()
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tGravityAccMag-mean()
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyAccMag-std()
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyBodyAccJerkMag-std()
fBodyBodyGyroJerkMag-std()
fBodyBodyGyroMag-std()
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
tBodyAccJerkMag-std()
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyAccMag-std()
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tBodyGyroJerkMag-std()
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyGyroMag-std()
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tGravityAccMag-std()
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z

==========================================================================
UCI Codebook Notes
==========================================================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 

These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 

Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass 
Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
