#Code Book
This code book describes the content of the output file ("tidy_means.txt") generated after running run_analysis.R

##Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz was captured.

For more information, refer to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data set is downloaded from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


##Transformation:
The run_analysis.R script performs the following transformations on the original data set:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Variables:
The output from the run_analysis.R script produces an output file - tidy_means.txt.  The output file contains the columns "Subject" and "Activity", which denote the Identifier of the subject and Activity Label of the activity, followed by the following variables:

List|of|Variables
------------ | ------------- | -------------|
Time.BodyAcc.Mean-X	|	Time.BodyGyro.Std-Y	|	FFT.BodyAcc.Std-Y
Time.BodyAcc.Mean-Y	|	Time.BodyGyro.Std-Z	|	FFT.BodyAcc.Std-Z
Time.BodyAcc.Mean-Z	|	Time.BodyGyroJerk.Mean-X	|	FFT.BodyAccJerk.Mean-X
Time.BodyAcc.Std-X	|	Time.BodyGyroJerk.Mean-Y	|	FFT.BodyAccJerk.Mean-Y
Time.BodyAcc.Std-Y	|	Time.BodyGyroJerk.Mean-Z	|	FFT.BodyAccJerk.Mean-Z
Time.BodyAcc.Std-Z	|	Time.BodyGyroJerk.Std-X	|	FFT.BodyAccJerk.Std-X
Time.GravityAcc.Mean-X	|	Time.BodyGyroJerk.Std-Y	|	FFT.BodyAccJerk.Std-Y
Time.GravityAcc.Mean-Y	|	Time.BodyGyroJerk.Std-Z	|	FFT.BodyAccJerk.Std-Z
Time.GravityAcc.Mean-Z	|	Time.BodyAccMag.Mean	|	FFT.BodyGyro.Mean-X
Time.GravityAcc.Std-X	|	Time.BodyAccMag.Std	|	FFT.BodyGyro.Mean-Y
Time.GravityAcc.Std-Y	|	Time.GravityAccMag.Mean	|	FFT.BodyGyro.Mean-Z
Time.GravityAcc.Std-Z	|	Time.GravityAccMag.Std	|	FFT.BodyGyro.Std-X
Time.BodyAccJerk.Mean-X	|	Time.BodyAccJerkMag.Mean	|	FFT.BodyGyro.Std-Y
Time.BodyAccJerk.Mean-Y	|	Time.BodyAccJerkMag.Std	|	FFT.BodyGyro.Std-Z
Time.BodyAccJerk.Mean-Z	|	Time.BodyGyroMag.Mean	|	FFT.BodyAccMag.Mean
Time.BodyAccJerk.Std-X	|	Time.BodyGyroMag.Std	|	FFT.BodyAccMag.Std
Time.BodyAccJerk.Std-Y	|	Time.BodyGyroJerkMag.Mean	|	FFT.BodyBodyAccJerkMag.Mean
Time.BodyAccJerk.Std-Z	|	Time.BodyGyroJerkMag.Std	|	FFT.BodyBodyAccJerkMag.Std
Time.BodyGyro.Mean-X	|	FFT.BodyAcc.Mean-X	|	FFT.BodyBodyGyroMag.Mean
Time.BodyGyro.Mean-Y	|	FFT.BodyAcc.Mean-Y	|	FFT.BodyBodyGyroMag.Std
Time.BodyGyro.Mean-Z	|	FFT.BodyAcc.Mean-Z	|	FFT.BodyBodyGyroJerkMag.Mean
Time.BodyGyro.Std-X	|	FFT.BodyAcc.Std-X	|	FFT.BodyBodyGyroJerkMag.Std


##Description of Variables
The parts of the names of the variables represent the following:

Name Part|Description
------------ | -------------
_Time_|Time captured using accelerometer and gyroscope 3-axial raw signals at a constant rate of 50hz.
_Body_ / _Gravity_|Body or gravity acceleration, after removal of noise and splitting of the signals using Butterworth filter with a corner frequency of 0.3Hz
_Acc_ / _Gyro_|Acceleratometer or gyroscope
_Jerk_|Jerk singals obtained using the body linear acceleration and angular velocity
_Mag_|Magnitude of the signals calculated using the Euclidean norm
_FFT_|Application of Fast Fourier Transform (FFT) to the signals 
_-X_ / _-Y_ / _-Z_|3-axial signals in the X, Y or Z direction
