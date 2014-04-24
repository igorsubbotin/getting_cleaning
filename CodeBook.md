## TIDY DATASET CODEBOOK

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

This tidy dataset is the result of transformation and clean up of data from the source pack of multiple datasets. Data was extracted from test (measurements, activtiy type and subject) dataset and training (measurements, activtiy type and subject) dataset and merged then in one dataset. In this tidy dataset there are only the measurements on the mean (mean postfix) and standard deviation (std postfix) for each measurement which were extracted from the source datasets. Descriptive column headers were added then. Activity type data was transformed from integer to descriptive labels. All data was grouped by subject and activity type and calculated mean for all measurement columns.

**actity_type** 				FACTOR
	Activity type
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING
		
**subject**						INTERGER
	Subject id

**tBodyAcc_mean_X**				NUMERIC
	
**tBodyAcc_mean_Y**				NUMERIC

**tBodyAcc_mean()_Z**			NUMERIC

**tBodyAcc_std_X**				NUMERIC

**tBodyAcc_std_Y**				NUMERIC

**tBodyAcc_std_Z**				NUMERIC

**tGravityAcc_mean_X**			NUMERIC

**tGravityAcc_mean_Y**			NUMERIC

**tGravityAcc_mean_Z**			NUMERIC

**tGravityAcc_std_X**			NUMERIC

**tGravityAcc_std_Y**			NUMERIC

**tGravityAcc_std_Z**			NUMERIC

**tBodyAccJerk_mean_X**			NUMERIC

**tBodyAccJerk_mean_Y**			NUMERIC

**tBodyAccJerk_mean_Z**			NUMERIC

**tBodyAccJerk_std_X**			NUMERIC

**tBodyAccJerk_std_Y**			NUMERIC

**tBodyAccJerk_std_Z**			NUMERIC

**tBodyGyro_mean_X**			NUMERIC

**tBodyGyro_mean_Y**			NUMERIC

**tBodyGyro_mean_Z**			NUMERIC

**tBodyGyro_std_X**				NUMERIC

**tBodyGyro_std_Y**				NUMERIC

**tBodyGyro_std_Z**				NUMERIC

**tBodyGyroJerk_mean_X**		NUMERIC

**tBodyGyroJerk_mean_Y**		NUMERIC

**tBodyGyroJerk_mean_Z**		NUMERIC

**tBodyGyroJerk_std_X**			NUMERIC

**tBodyGyroJerk_std_Y**			NUMERIC

**tBodyGyroJerk_std_Z**			NUMERIC

**tBodyAccMag_mean**			NUMERIC

**tBodyAccMag_std**				NUMERIC

**tGravityAccMag_mean**			NUMERIC

**tGravityAccMag_std**			NUMERIC

**tBodyAccJerkMag_mean**		NUMERIC	

**tBodyAccJerkMag_std**			NUMERIC

**tBodyGyroMag_mean**			NUMERIC

**tBodyGyroMag_std**			NUMERIC

**tBodyGyroJerkMag_mean**		NUMERIC

**tBodyGyroJerkMag_std**		NUMERIC

**fBodyAcc_mean_X**				NUMERIC

**fBodyAcc_mean_Y**				NUMERIC

**fBodyAcc_mean_Z**				NUMERIC

**fBodyAcc_std_X**				NUMERIC

**fBodyAcc_std_Y**				NUMERIC

**fBodyAcc_std_Z**				NUMERIC

**fBodyAccJerk_mean_X**			NUMERIC

**fBodyAccJerk_mean_Y**			NUMERIC

**fBodyAccJerk_mean_Z**			NUMERIC

**fBodyAccJerk_std_X**			NUMERIC

**fBodyAccJerk_std_Y**			NUMERIC

**fBodyAccJerk_std_Z**			NUMERIC

**fBodyGyro_mean_X**			NUMERIC

**fBodyGyro_mean_Y**			NUMERIC

**fBodyGyro_mean_Z**			NUMERIC

**fBodyGyro_std_X**				NUMERIC

**fBodyGyro_std_Y**				NUMERIC

**fBodyGyro_std_Z**				NUMERIC

**fBodyAccMag_mean**			NUMERIC

**fBodyAccMag_std**				NUMERIC

**fBodyBodyAccJerkMag_mean**	NUMERIC

**fBodyBodyAccJerkMag_std**		NUMERIC

**fBodyBodyGyroMag_mean**		NUMERIC

**fBodyBodyGyroMag_std**		NUMERIC

**fBodyBodyGyroJerkMag_mean**	NUMERIC

**fBodyBodyGyroJerkMag_std**	NUMERIC