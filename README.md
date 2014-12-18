# Introduction

This document describes the following:

* The Raw Data
* The Tidy Data
* The Code Book
* The Recipe

# The Raw Data

![](http://i2.cdscdn.com/pdt2/7/7/2/1/700x700/auc8650132140772/rw/housse-brassard-sport-samsu.jpg)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

A full description is available at the site where the data was obtained:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "Source")

The raw data of the project can be download there:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "raw data")

# The Tidy Data

The tidy data are on the file named [meanTidyDataset.txt](https://github.com/romain-jacotin/getting-and-cleaning-data/blob/master/meanTidyDataset.txt "meanTidyDataset.txt")

## Summary choice

The tidy dataset contains 180 observations ( = 30 subjects by 6 activities) of 81 variables.
In addition of "subject" and "activity" variables there are the average of 46 "mean" features and 33 "standard deviation" features measurement concerning the physical "activity" of a specific "subject".
<BR><I>Notes: the 79 average features are calculated from the original <B>mean</B> or <B>standard deviation</B> numeric values extracted from the original raw data.</I>

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

# The Code Book

This [Code Book](https://github.com/romain-jacotin/getting-and-cleaning-data/blob/master/CodeBook.md "CodeBook.md") describes the variables of the tidy data set.

# The Recipe

The following R script takes the raw data as input and produces the tidy as output.
<I>( MAC OS X 10.10.1 with R version 3.1.2 )</I>

[run_analysis.R](https://github.com/romain-jacotin/getting-and-cleaning-data/blob/master/run_analysis.R "run_analysis.R")

<I><B>Note</B>: At the end the R script write the tidy data set in a "txt" file name "meanTidyDataset.txt" without row names.</I>

## Steps by steps
The R script is doing the following steps:<BR>
![](https://raw.githubusercontent.com/romain-jacotin/getting-and-cleaning-data/master/trainYtestY.png)
![](https://raw.githubusercontent.com/romain-jacotin/getting-and-cleaning-data/master/features.png)
![](https://raw.githubusercontent.com/romain-jacotin/getting-and-cleaning-data/master/merge.png)
![](https://raw.githubusercontent.com/romain-jacotin/getting-and-cleaning-data/master/filter.png)
![](https://raw.githubusercontent.com/romain-jacotin/getting-and-cleaning-data/master/aggregate.png)

<I><B>Note</B>: At the end the R script write the tidy data set in a "txt" file name "meanTidyDataset.txt" without row names.</I>
