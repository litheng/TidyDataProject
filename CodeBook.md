#CodeBook
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
 
* 	Time.BodyAcc.Mean-X
* 	Time.BodyAcc.Mean-Y
* 	Time.BodyAcc.Mean-Z
* 	Time.BodyAcc.Std-X
* 	Time.BodyAcc.Std-Y
* 	Time.BodyAcc.Std-Z
* 	Time.GravityAcc.Mean-X
* 	Time.GravityAcc.Mean-Y
* 	Time.GravityAcc.Mean-Z
* 	Time.GravityAcc.Std-X
* 	Time.GravityAcc.Std-Y
* 	Time.GravityAcc.Std-Z
* 	Time.BodyAccJerk.Mean-X
* 	Time.BodyAccJerk.Mean-Y
* 	Time.BodyAccJerk.Mean-Z
* 	Time.BodyAccJerk.Std-X
* 	Time.BodyAccJerk.Std-Y
* 	Time.BodyAccJerk.Std-Z
* 	Time.BodyGyro.Mean-X
* 	Time.BodyGyro.Mean-Y
* 	Time.BodyGyro.Mean-Z
* 	Time.BodyGyro.Std-X
* 	Time.BodyGyro.Std-Y
* 	Time.BodyGyro.Std-Z
* 	Time.BodyGyroJerk.Mean-X
* 	Time.BodyGyroJerk.Mean-Y
* 	Time.BodyGyroJerk.Mean-Z
* 	Time.BodyGyroJerk.Std-X
* 	Time.BodyGyroJerk.Std-Y
* 	Time.BodyGyroJerk.Std-Z
* 	Time.BodyAccMag.Mean
* 	Time.BodyAccMag.Std
* 	Time.GravityAccMag.Mean
* 	Time.GravityAccMag.Std
* 	Time.BodyAccJerkMag.Mean
* 	Time.BodyAccJerkMag.Std
* 	Time.BodyGyroMag.Mean
* 	Time.BodyGyroMag.Std
* 	Time.BodyGyroJerkMag.Mean
* 	Time.BodyGyroJerkMag.Std
* 	FFT.BodyAcc.Mean-X
* 	FFT.BodyAcc.Mean-Y
* 	FFT.BodyAcc.Mean-Z
* 	FFT.BodyAcc.Std-X
* 	FFT.BodyAcc.Std-Y
* 	FFT.BodyAcc.Std-Z
* 	FFT.BodyAccJerk.Mean-X
* 	FFT.BodyAccJerk.Mean-Y
* 	FFT.BodyAccJerk.Mean-Z
* 	FFT.BodyAccJerk.Std-X
* 	FFT.BodyAccJerk.Std-Y
* 	FFT.BodyAccJerk.Std-Z
* 	FFT.BodyGyro.Mean-X
* 	FFT.BodyGyro.Mean-Y
* 	FFT.BodyGyro.Mean-Z
* 	FFT.BodyGyro.Std-X
* 	FFT.BodyGyro.Std-Y
* 	FFT.BodyGyro.Std-Z
* 	FFT.BodyAccMag.Mean
* 	FFT.BodyAccMag.Std
* 	FFT.BodyBodyAccJerkMag.Mean
* 	FFT.BodyBodyAccJerkMag.Std
* 	FFT.BodyBodyGyroMag.Mean
* 	FFT.BodyBodyGyroMag.Std
* 	FFT.BodyBodyGyroJerkMag.Mean
* 	FFT.BodyBodyGyroJerkMag.Std


##Description of Variables
The parts of the names of the variables represent the following:

* _Time_: Time captured using accelerometer and gyroscope 3-axial raw signals at a constant rate of 50hz.
* _Body_ / _Gravity_: Body or gravity acceleration, after removal of noise and splitting of the signals using Butterworth filter * with a corner frequency of 0.3Hz
* _Acc_ / _Gyro_: Acceleratometer or gyroscope
* _Jerk_: Jerk singals obtained using the body linear acceleration and angular velocity
* _Mag_: Magnitude of the signals calculated using the Euclidean norm
* _FFT_: Application of Fast Fourier Transform (FFT) to the signals 
* _-XYZ_: 3-axial signals in the X, Y and Z directions
