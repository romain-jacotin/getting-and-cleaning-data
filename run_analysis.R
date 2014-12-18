## run_analysis.R script
##
## This script must be in the same directory where the ZIP file containing
## the dataset is unzip.
##
## RAW DATA: The ZIP dataset can be dowloaded there :
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##
## This script create two variables in global environment:
##
## 'tidyDataset'     is a data frame create at the end of Step 4
## 'sortedMeanTidyDataset' is a data frame create at the end of Step 5
##
## This script write in a file named "meanTidyDataset.txt" the result of step 5
##

##
## STEP 1 to 4
##

## read the file containing the "Activity" labels
activityLabels <- read.table( "UCI HAR Dataset/activity_labels.txt", sep=" ",
                              col.names=c("ActivityID", "ActivityLabel") )

## Read the file containing the "Features" labels and do the following:
## First eliminate duplicate feature labels by renaming them to their row indexes
## for rows 303 to 344, rows 382 to 423 and rows 461 to 502
## Then remove "(" and ")" characters
## and replace coma and minus character by underscore character in feature labels
featuresLabels <- read.table( "UCI HAR Dataset/features.txt",
                              sep = " ",
                              col.names = c("position", "name"),
                              stringsAsFactors = FALSE )
featuresLabels$name <- c( featuresLabels$name[1:302],    ## keep features names
                          c(303:344), ## rename duplicate feature names
                          featuresLabels$name[345:381],  ## keep features names
                          c(382:423), ## rename duplicate feature names
                          featuresLabels$name[424:460],  ## keep features names
                          c(461:502), ## rename duplicate feature names
                          featuresLabels$name[503:561] ) ## keep features names
featuresLabels$name <- gsub( "\\(", "",  featuresLabels$name)
featuresLabels$name <- gsub( "\\)", "",  featuresLabels$name)
featuresLabels$name <- gsub( "-",   "_", featuresLabels$name)
featuresLabels$name <- gsub( ",",   "_", featuresLabels$name)

## read the file containing the "subject" identifiers for both dataset
trainSubject <- read.table( "UCI HAR Dataset/train/subject_train.txt",
                            sep = " ",
                            col.names = c("subject") )
testSubject  <- read.table( "UCI HAR Dataset/test/subject_test.txt",
                            sep = " ",
                            col.names = c("subject") )

## read the file containing the activity number for both dataset
trainY <- read.table( "UCI HAR Dataset/train/y_train.txt",
                      sep = " ",
                      col.names = c("activity"))
testY  <- read.table( "UCI HAR Dataset/test/y_test.txt",
                      sep = " ",
                      col.names = c("activity"))

## replace the activity number with the activity labels in both dataset
trainY$activity <- activityLabels[trainY$activity,2]
testY$activity  <- activityLabels[testY$activity,2]

## read the file containing the features values for both dataset
trainX <- read.table( "UCI HAR Dataset/train/X_train.txt",
                      col.names = featuresLabels$name,
                      strip.white = TRUE )
testX  <- read.table( "UCI HAR Dataset/test/X_test.txt",
                      col.names = featuresLabels$name,
                      strip.white = TRUE )

## merge all the columns in a single data frame for both dataset
##    col °1            = "subject"
##    col °2            = "activity"
##    col °3 to col 563 = "...features.."
train <- cbind( trainSubject, trainY, trainX)
test  <- cbind( testSubject,  testY,  testX)

## then merge all the rows of the 'train' and 'test' datasets
tidyDataset <- rbind( train, test )

## Keep the "subject" and "activity" columns
## and remove all the features's colums whose labels do not contains "mean" or "std"
## NOTE: there are labels that contain "Mean" with first letter in capital at the end
## but those features are not mean values but Angle values in fact,
## so we don't keep them:that's why we just keep features that contain "mean" in lower case.
l <- colnames( tidyDataset )
toKeep <- grepl( "subject|activity|mean|std", l )
tidyDataset <- subset(tidyDataset, select = l[toKeep])

## we can now delete the no more useful variables we used
## and we just keep the 'tidyDataset' variable in our global environment
rm( train, trainSubject, trainX, trainY,
    test,  testSubject,  testX,  testY,
    activityLabels, featuresLabels, toKeep, l)

##
## STEP 5
##

## the aggregate command ( type ?aggregate for usage in R ) is used to
## perform the last task : calculate the average (=mean function) of each
## variable for each activity and each subject and storing the result in
## the 'meanTidyDataset' variable
meanTidyDataset <- aggregate( tidyDataset[3:ncol(tidyDataset)],
                              by=list( subject  = tidyDataset$subject,
                                       activity = tidyDataset$activity ),
                              FUN=mean )

## Then only for good looking, we sort the resulting mean dataset by column "subject",
## then "activity" so it is easier to look at activities mean values for one subject
## The first rows look like this :
##
## subject          activity tBodyAcc_mean_X tBodyAcc_mean_Y tBodyAcc_mean_Z tBodyAcc_std_X
##       1             LAYING       0.2215982    -0.040513953      -0.1132036    -0.92805647
##       1            SITTING       0.2612376    -0.001308288      -0.1045442    -0.97722901
##       1           STANDING       0.2789176    -0.016137590      -0.1106018    -0.99575990
##       1            WALKING       0.2773308    -0.017383819      -0.1111481    -0.28374026
##       1 WALKING_DOWNSTAIRS       0.2891883    -0.009918505      -0.1075662     0.03003534
##       1   WALKING_UPSTAIRS       0.2554617    -0.023953149      -0.0973020    -0.35470803
##       2             LAYING       0.2813734    -0.018158740      -0.1072456    -0.97405946
##       2            SITTING       0.2770874    -0.015687994      -0.1092183    -0.98682228
## etc ...
sortedMeanTidyDataset <-  meanTidyDataset[with(meanTidyDataset, order(subject,activity)),]

## then we finallu write the sorted mean tidy dataset in the working directory
## in a txt file name "meanTidyDataset.txt" without row names
write.table(sortedMeanTidyDataset, file = "meanTidyDataset.txt", row.name = FALSE)

