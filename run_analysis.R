## run_analysis.R script
##
## This script must be in the same directory where the ZIP file containing
## the dataset is unzip.
##
## The ZIP dataset can be dowloaded there :
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##
## This script create two variables in global environment:
##
## 'tidyDataset'     is a data frame create at the end of Step 4
## 'meanTidyDataset' is a data frame create at the end of Step 5
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
## remove "()" and replace "-" character by "." character in feature labels
featuresLabels <- read.table( "UCI HAR Dataset/features.txt", sep=" ",
                              col.names=c("FeaturePosition", "FeatureName") )
featuresLabels$FeatureName <- gsub("\\(\\)","", featuresLabels$FeatureName)
featuresLabels$FeatureName <- gsub("-",".", featuresLabels$FeatureName)

## read the file containing the "subject" identifiers for both dataset
trainSubject <- read.table( "UCI HAR Dataset/train/subject_train.txt", sep=" ",
                            col.names=c("Subject") )
testSubject  <- read.table( "UCI HAR Dataset/test/subject_test.txt", sep=" ",
                            col.names=c("Subject") )

## read the file containing the activity number for both dataset
trainY <- read.table( "UCI HAR Dataset/train/y_train.txt", sep=" ",
                     col.names=c("Activity"))
testY  <- read.table( "UCI HAR Dataset/test/y_test.txt", sep=" ",
                     col.names=c("Activity"))

## replace the activity number with the activity labels in both dataset
trainY$Activity <- activityLabels[trainY$Activity,2]
testY$Activity  <- activityLabels[testY$Activity,2]

## read the file containing the features values for both dataset
trainX <- read.table( "UCI HAR Dataset/train/X_train.txt",
                      col.names=featuresLabels$FeatureName, strip.white=TRUE )
testX  <- read.table( "UCI HAR Dataset/test/X_test.txt",
                      col.names=featuresLabels$FeatureName, strip.white=TRUE )

## merge all the columns in a single data frame for both dataset
##    col °1            = "Subject"
##    col °2            = "Activity"
##    col °3 to col 563 = "...Features.."
train <- cbind( trainSubject, trainY, trainX)
test  <- cbind( testSubject,  testY,  testX)

## then merge all the rows of the 'train' and 'test' datasets
tidyDataset <- rbind( train, test )

## remove all the features's colums whose labels do not contains "MEAN" or "STD"
l <- colnames( tidyDataset )
toKeep <- grepl( "Subject|Activity|mean|std", l )
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
                              by=list( Activity=tidyDataset$Activity,
                                       Subject=tidyDataset$Subject ),
                              FUN=mean )

## then we write the mean tidy dataset in the working directory
## in a txt file name "meanTidyDataset.txt" without row names
write.table(meanTidyDataset, file="meanTidyDataset.txt", row.name=FALSE)

