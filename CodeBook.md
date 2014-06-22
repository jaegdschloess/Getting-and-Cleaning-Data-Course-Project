
# Codebook - UCI HAR Aggregated Dataset

# Overview
For each student and activity, an average (in this case a mean) is computed per measurement.
The measurements on which an average is computed are restricted to the set of means and 
standard deviations.

# Notes
Units for all averages are not applicable because all features on which the averages are computed 
are normalized and bounded within [-1,1]. As such, since normalization produces ratios, 
the average of these ratios by extension also has no units.

# Table of variables in data set

Variable       | Description                        | Units | Values                        | 
-------------- | ---------------------------------- | ----- | ----------------------------- |
subject_id     |  Numeric id of experimental subject|  N/A  | 1-30 inclusive  
activity_name  |  Description of human position and movement |  N/A  | LAYING,SITTING,STANDING,WALKING,WALKING_DOWNSTAIRS,WALKING_UPSTAIRS 
avg_tBodyAcc-mean()-X | average of tBodyAcc-mean()-X| N/A | numeric between -1 and 1
avg_tBodyAcc-mean()-Y | average of tBodyAcc-mean()-Y| N/A | numeric between -1 and 1
avg_tBodyAcc-mean()-Z | average of tBodyAcc-mean()-Z| N/A | numeric between -1 and 1
avg_tBodyAcc-std()-X | average of tBodyAcc-std()-X| N/A | numeric between -1 and 1
avg_tBodyAcc-std()-Y | average of tBodyAcc-std()-Y| N/A | numeric between -1 and 1
avg_tBodyAcc-std()-Z | average of tBodyAcc-std()-Z| N/A | numeric between -1 and 1
avg_tGravityAcc-mean()-X | average of tGravityAcc-mean()-X| N/A | numeric between -1 and 1
avg_tGravityAcc-mean()-Y | average of tGravityAcc-mean()-Y| N/A | numeric between -1 and 1
avg_tGravityAcc-mean()-Z | average of tGravityAcc-mean()-Z| N/A | numeric between -1 and 1
avg_tGravityAcc-std()-X | average of tGravityAcc-std()-X| N/A | numeric between -1 and 1
avg_tGravityAcc-std()-Y | average of tGravityAcc-std()-Y| N/A | numeric between -1 and 1
avg_tGravityAcc-std()-Z | average of tGravityAcc-std()-Z| N/A | numeric between -1 and 1
avg_tBodyAccJerk-mean()-X | average of tBodyAccJerk-mean()-X| N/A | numeric between -1 and 1
avg_tBodyAccJerk-mean()-Y | average of tBodyAccJerk-mean()-Y| N/A | numeric between -1 and 1
avg_tBodyAccJerk-mean()-Z | average of tBodyAccJerk-mean()-Z| N/A | numeric between -1 and 1
avg_tBodyAccJerk-std()-X | average of tBodyAccJerk-std()-X| N/A | numeric between -1 and 1
avg_tBodyAccJerk-std()-Y | average of tBodyAccJerk-std()-Y| N/A | numeric between -1 and 1
avg_tBodyAccJerk-std()-Z | average of tBodyAccJerk-std()-Z| N/A | numeric between -1 and 1
avg_tBodyGyro-mean()-X | average of tBodyGyro-mean()-X| N/A | numeric between -1 and 1
avg_tBodyGyro-mean()-Y | average of tBodyGyro-mean()-Y| N/A | numeric between -1 and 1
avg_tBodyGyro-mean()-Z | average of tBodyGyro-mean()-Z| N/A | numeric between -1 and 1
avg_tBodyGyro-std()-X | average of tBodyGyro-std()-X| N/A | numeric between -1 and 1
avg_tBodyGyro-std()-Y | average of tBodyGyro-std()-Y| N/A | numeric between -1 and 1
avg_tBodyGyro-std()-Z | average of tBodyGyro-std()-Z| N/A | numeric between -1 and 1
avg_tBodyGyroJerk-mean()-X | average of tBodyGyroJerk-mean()-X| N/A | numeric between -1 and 1
avg_tBodyGyroJerk-mean()-Y | average of tBodyGyroJerk-mean()-Y| N/A | numeric between -1 and 1
avg_tBodyGyroJerk-mean()-Z | average of tBodyGyroJerk-mean()-Z| N/A | numeric between -1 and 1
avg_tBodyGyroJerk-std()-X | average of tBodyGyroJerk-std()-X| N/A | numeric between -1 and 1
avg_tBodyGyroJerk-std()-Y | average of tBodyGyroJerk-std()-Y| N/A | numeric between -1 and 1
avg_tBodyGyroJerk-std()-Z | average of tBodyGyroJerk-std()-Z| N/A | numeric between -1 and 1
avg_tBodyAccMag-mean() | average of tBodyAccMag-mean()| N/A | numeric between -1 and 1
avg_tBodyAccMag-std() | average of tBodyAccMag-std()| N/A | numeric between -1 and 1
avg_tGravityAccMag-mean() | average of tGravityAccMag-mean()| N/A | numeric between -1 and 1
avg_tGravityAccMag-std() | average of tGravityAccMag-std()| N/A | numeric between -1 and 1
avg_tBodyAccJerkMag-mean() | average of tBodyAccJerkMag-mean()| N/A | numeric between -1 and 1
avg_tBodyAccJerkMag-std() | average of tBodyAccJerkMag-std()| N/A | numeric between -1 and 1
avg_tBodyGyroMag-mean() | average of tBodyGyroMag-mean()| N/A | numeric between -1 and 1
avg_tBodyGyroMag-std() | average of tBodyGyroMag-std()| N/A | numeric between -1 and 1
avg_tBodyGyroJerkMag-mean() | average of tBodyGyroJerkMag-mean()| N/A | numeric between -1 and 1
avg_tBodyGyroJerkMag-std() | average of tBodyGyroJerkMag-std()| N/A | numeric between -1 and 1
avg_fBodyAcc-mean()-X | average of fBodyAcc-mean()-X| N/A | numeric between -1 and 1
avg_fBodyAcc-mean()-Y | average of fBodyAcc-mean()-Y| N/A | numeric between -1 and 1
avg_fBodyAcc-mean()-Z | average of fBodyAcc-mean()-Z| N/A | numeric between -1 and 1
avg_fBodyAcc-std()-X | average of fBodyAcc-std()-X| N/A | numeric between -1 and 1
avg_fBodyAcc-std()-Y | average of fBodyAcc-std()-Y| N/A | numeric between -1 and 1
avg_fBodyAcc-std()-Z | average of fBodyAcc-std()-Z| N/A | numeric between -1 and 1
avg_fBodyAccJerk-mean()-X | average of fBodyAccJerk-mean()-X| N/A | numeric between -1 and 1
avg_fBodyAccJerk-mean()-Y | average of fBodyAccJerk-mean()-Y| N/A | numeric between -1 and 1
avg_fBodyAccJerk-mean()-Z | average of fBodyAccJerk-mean()-Z| N/A | numeric between -1 and 1
avg_fBodyAccJerk-std()-X | average of fBodyAccJerk-std()-X| N/A | numeric between -1 and 1
avg_fBodyAccJerk-std()-Y | average of fBodyAccJerk-std()-Y| N/A | numeric between -1 and 1
avg_fBodyAccJerk-std()-Z | average of fBodyAccJerk-std()-Z| N/A | numeric between -1 and 1
avg_fBodyGyro-mean()-X | average of fBodyGyro-mean()-X| N/A | numeric between -1 and 1
avg_fBodyGyro-mean()-Y | average of fBodyGyro-mean()-Y| N/A | numeric between -1 and 1
avg_fBodyGyro-mean()-Z | average of fBodyGyro-mean()-Z| N/A | numeric between -1 and 1
avg_fBodyGyro-std()-X | average of fBodyGyro-std()-X| N/A | numeric between -1 and 1
avg_fBodyGyro-std()-Y | average of fBodyGyro-std()-Y| N/A | numeric between -1 and 1
avg_fBodyGyro-std()-Z | average of fBodyGyro-std()-Z| N/A | numeric between -1 and 1
avg_fBodyAccMag-mean() | average of fBodyAccMag-mean()| N/A | numeric between -1 and 1
avg_fBodyAccMag-std() | average of fBodyAccMag-std()| N/A | numeric between -1 and 1
avg_fBodyBodyAccJerkMag-mean() | average of fBodyBodyAccJerkMag-mean()| N/A | numeric between -1 and 1
avg_fBodyBodyAccJerkMag-std() | average of fBodyBodyAccJerkMag-std()| N/A | numeric between -1 and 1
avg_fBodyBodyGyroMag-mean() | average of fBodyBodyGyroMag-mean()| N/A | numeric between -1 and 1
avg_fBodyBodyGyroMag-std() | average of fBodyBodyGyroMag-std()| N/A | numeric between -1 and 1
avg_fBodyBodyGyroJerkMag-mean() | average of fBodyBodyGyroJerkMag-mean()| N/A | numeric between -1 and 1
avg_fBodyBodyGyroJerkMag-std() | average of fBodyBodyGyroJerkMag-std()| N/A | numeric between -1 and 1
