# The Raw Data

![](http://i2.cdscdn.com/pdt2/7/7/2/1/700x700/auc8650132140772/rw/housse-brassard-sport-samsu.jpg)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

A full description is available at the site where the data was obtained:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "Source")

The raw data of the project can be download there:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "raw data")

# Recipe

![](https://raw.githubusercontent.com/romain-jacotin/getting-and-cleaning-data/master/activities.png)
![](https://raw.githubusercontent.com/romain-jacotin/getting-and-cleaning-data/master/features.png)


# The Tidy Data Set

## Summary choice

This tidy dataset contains 180 observations ( = 30 subjects by 6 activities) of 81 variables.
In addition of "subject" and "activity" variables there are 46 "mean" features and 33 "standard deviation" features measurement concerning the physical "activity" of a specific "subject".
<BR><I>Notes: the 79 features are original <B>mean</B> or <B>standard deviation</B> numeric values extracted from the original raw data.</I>

## Extract of the tidy data

 subject |           activity | tBodyAcc_mean_X | tBodyAcc_mean_Y | tBodyAcc_mean_Z | tBodyAcc_std_X | ...
---------|--------------------|-----------------|-----------------|-----------------|----------------|----
       1 |            LAYING  |       0.2215982 |   -0.040513953  |    -0.1132036   | -0.92805647    | ...
       1 |           SITTING  |      0.2612376  |  -0.001308288   |   -0.1045442    | -0.97722901    | ...
       1 |          STANDING  |      0.2789176  |  -0.016137590   |   -0.1106018    | -0.99575990    | ...
       1 |           WALKING  |      0.2773308  |  -0.017383819   |   -0.1111481    | -0.28374026    | ...
       1 | WALKING_DOWNSTAIRS |      0.2891883  |  -0.009918505   |   -0.1075662    | 0.03003534     | ...
       1 |  WALKING_UPSTAIRS  |     0.2554617   | -0.023953149    |  -0.0973020     | -0.35470803    | ...
       2 |            LAYING  |     0.2813734   | -0.018158740    |  -0.1072456     | -0.97405946    | ...
       2 |           SITTING  |     0.2770874   | -0.015687994    |  -0.1092183     | -0.98682228    | ...
    ...  |               ...  |        ...      |    ...          |      ...        |       ...      | ...

## Variables

* <B>subject</B><BR> = integer ranging from 1 to 30
(subject) is the id number of the subject, there is a total of 30 different subjects  

* <B>activity</B><BR> = categorical with 6 different strings (one string by activitiy):<BR>
| activity           
|--------------------
| LAYING             
| SITTING             
| STANDING           
| WALKING            
| WALKING_DOWNSTAIRS 
| WALKING_UPSTAIRS    <BR>
(activity) is the name of the activity done by the subject for the observed features. There is a total of 6 different activities  

* <B>tBodyAcc_mean_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAcc-mean()-X"</CODE>  

* <B>tBodyAcc_mean_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAcc-mean()-Y"</CODE>

* <B>tBodyAcc_mean_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAcc-mean()-Z"</CODE>  

* <B>tBodyAcc_std_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAcc-std()-X"</CODE>  
 
* <B>tBodyAcc_std_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAcc-std()-Y"</CODE>  
 
* <B>tBodyAcc_std_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAcc-std()-Z"</CODE>  

* <B>tGravityAcc_mean_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tGravityAcc-mean()-X"</CODE>  

* <B>tGravityAcc_mean_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tGravityAcc-mean()-Y"</CODE>  

* <B>tGravityAcc_mean_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tGravityAcc-mean()-Z"</CODE>  

* <B>tGravityAcc_std_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tGravityAcc-std()-X"</CODE>  

* <B>tGravityAcc_std_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tGravityAcc-std()-Y"</CODE>  

* <B>tGravityAcc_std_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tGravityAcc-std()-Z"</CODE>  

* <B>tBodyAccJerk_mean_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAccJerk-mean()-X"</CODE>  

* <B>tBodyAccJerk_mean_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAccJerk-mean()-Y"</CODE>  

* <B>tBodyAccJerk_mean_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAccJerk-mean()-Z"</CODE>  

* <B>tBodyAccJerk_std_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAccJerk-std()-X"</CODE>  

* <B>tBodyAccJerk_std_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAccJerk-std()-Y"</CODE>  

* <B>tBodyAccJerk_std_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAccJerk-std()-Z"</CODE>  

* <B>tBodyGyro_mean_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyro-mean()-X"</CODE>  

* <B>tBodyGyro_mean_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyro-mean()-Y"</CODE>  

* <B>tBodyGyro_mean_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyro-mean()-Z"</CODE>  

* <B>tBodyGyro_std_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyro-std()-X"</CODE>  

* <B>tBodyGyro_std_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyro-std()-Y"</CODE>  

* <B>tBodyGyro_std_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyro-std()-Z"</CODE>  

* <B>tBodyGyroJerk_mean_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyroJerk-mean()-X"</CODE>  

* <B>tBodyGyroJerk_mean_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyroJerk-mean()-Y"</CODE>  

* <B>tBodyGyroJerk_mean_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyroJerk-mean()-Z"</CODE>  

* <B>tBodyGyroJerk_std_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyroJerk-std()-X"</CODE>  

* <B>tBodyGyroJerk_std_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyroJerk-std()-Y"</CODE>  

* <B>tBodyGyroJerk_std_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyroJerk-std()-Z"</CODE>  

* <B>tBodyAccMag_mean</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAccMag-mean()"</CODE>  

* <B>tBodyAccMag_std</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAccMag-std()"</CODE>  

* <B>tGravityAccMag_mean</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tGravityAccMag-mean()"</CODE>  

* <B>tGravityAccMag_std</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tGravityAccMag-std()"</CODE>  

* <B>tBodyAccJerkMag_mean</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAccJerkMag-mean()"</CODE>  

* <B>tBodyAccJerkMag_std</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyAccJerkMag-std()"</CODE>  

* <B>tBodyGyroMag_mean</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyroMag-mean()"</CODE>  

* <B>tBodyGyroMag_std</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyroMag-std()"</CODE><BR>

* <B>tBodyGyroJerkMag_mean</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyroJerkMag-mean()"</CODE>  

* <B>tBodyGyroJerkMag_std</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"tBodyGyroJerkMag-std()"</CODE>  

* <B>fBodyAcc_mean_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAcc-mean()-X"</CODE>  

* <B>fBodyAcc_mean_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAcc-mean()-Y"</CODE>  

* <B>fBodyAcc_mean_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAcc-mean()-Z"</CODE>  

* <B>fBodyAcc_std_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAcc-std()-X"</CODE>  

* <B>fBodyAcc_std_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAcc-std()-Y"</CODE>  

* <B>fBodyAcc_std_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAcc-std()-Z"</CODE>  

* <B>fBodyAcc_meanFreq_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAcc-meanFreq()-X"</CODE>  

* <B>fBodyAcc_meanFreq_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAcc-meanFreq()-Y"</CODE>  

* <B>fBodyAcc_meanFreq_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAcc-meanFreq()-Z"</CODE>  

* <B>fBodyAccJerk_mean_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAccJerk-mean()-X"</CODE>  

* <B>fBodyAccJerk_mean_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAccJerk-mean()-Y"</CODE>  

* <B>fBodyAccJerk_mean_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAccJerk-mean()-Z"</CODE>  

* <B>fBodyAccJerk_std_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAccJerk-std()-X"</CODE>  

* <B>fBodyAccJerk_std_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAccJerk-std()-Y"</CODE>  

* <B>fBodyAccJerk_std_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAccJerk-std()-Z"</CODE>  

* <B>fBodyAccJerk_meanFreq_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAccJerk-meanFreq()-X"</CODE>  

* <B>fBodyAccJerk_meanFreq_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAccJerk-meanFreq()-Y"</CODE>  

* <B>fBodyAccJerk_meanFreq_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAccJerk-meanFreq()-Z"</CODE>  

* <B>fBodyGyro_mean_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyGyro-mean()-X"</CODE>  

* <B>fBodyGyro_mean_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyGyro-mean()-Y"</CODE>  

* <B>fBodyGyro_mean_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyGyro-mean()-Z"</CODE>  

* <B>fBodyGyro_std_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyGyro-std()-X"</CODE>  

* <B>fBodyGyro_std_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyGyro-std()-Y"</CODE>  

* <B>fBodyGyro_std_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyGyro-std()-Z"</CODE>  

* <B>fBodyGyro_meanFreq_X</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyGyro-meanFreq()-X"</CODE>  

* <B>fBodyGyro_meanFreq_Y</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyGyro-meanFreq()-Y"</CODE>  

* <B>fBodyGyro_meanFreq_Z</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyGyro-meanFreq()-Z"</CODE>  

* <B>fBodyAccMag_mean</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAccMag-mean()"</CODE>  

* <B>fBodyAccMag_std</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAccMag-std()"</CODE>  

* <B>fBodyAccMag_meanFreq</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyAccMag-meanFreq()"</CODE>  

* <B>fBodyBodyAccJerkMag_mean</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyBodyAccJerkMag-mean()"</CODE>  

* <B>fBodyBodyAccJerkMag_std</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyBodyAccJerkMag-std()"</CODE>  

* <B>fBodyBodyAccJerkMag_meanFreq</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyBodyAccJerkMag-meanFreq()"</CODE>  

* <B>fBodyBodyGyroMag_mean</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyBodyGyroMag-mean()"</CODE>  

* <B>fBodyBodyGyroMag_std</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyBodyGyroMag-std()"</CODE>  

* <B>fBodyBodyGyroMag_meanFreq</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyBodyGyroMag-meanFreq()"</CODE>  

* <B>fBodyBodyGyroJerkMag_mean</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyBodyGyroJerkMag-mean()"</CODE>  

* <B>fBodyBodyGyroJerkMag_std</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyBodyGyroJerkMag-std()"</CODE>  

* <B>fBodyBodyGyroJerkMag_meanFreq</B><BR> = numeric mean value normalized and bounded within range –1 to 1
It is the original raw data feature labeled <CODE>"fBodyBodyGyroJerkMag-meanFreq()"</CODE>  

