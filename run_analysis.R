##-------------Step 1 start -----------------------------
## Merges the training and the test sets to create one data set

## Loading the labels
actLabels = read.table("activity_labels.txt",sep="")
features = read.table("features.txt",sep="")

## Loading all the data files for Train 
## and adding names to the columns from the labels provided above
xtrain = read.table("train/X_train.txt", sep = "")
names(xtrain) <- as.character(features$V2)

ytrain = read.table("train/y_train.txt", sep = "")
names(ytrain) <- "activity"
## Step 3 Uses descriptive activity names to name the activities in the data set
ytrain$activity <- factor(ytrain$activity, levels = actLabels$V1, labels = actLabels$V2)

trainSubjects = read.table("train/subject_train.txt", sep = "")
names(trainSubjects) <- "subject"

## Combining the Train data to from one single data.frame
train <- bind_cols(trainSubjects,ytrain,xtrain)

## Loading all the data files for Test 
## and adding names to the columns from the labels provided above
xtest = read.table("test/X_test.txt", sep = "")
names(xtest) <- as.character(features$V2)

ytest = read.table("test/y_test.txt", sep = "")
names(ytest) <- "activity"
## Step 3 Uses descriptive activity names to name the activities in the data set
ytest$activity <- factor(ytest$activity, levels = actLabels$V1, labels = actLabels$V2)

testSubjects = read.table("test/subject_test.txt", sep = "")
names(testSubjects) <- "subject"

## Combining the Test data to form one single data.frame
test <- bind_cols(testSubjects,ytest,xtest)

## Combining the Train & Test data to form one single data.frame
combinedData <- rbind(train,test)

##-------------Step 2 start -----------------------------
## Extracts only the measurements on the mean and standard deviation for each measurement. 

valid_column_names <- make.names(names=names(combinedData), unique=TRUE, allow_ = TRUE)
names(combinedData) <- valid_column_names

combinedData.mean_std <- select(combinedData, subject, activity, contains("mean", ignore.case = TRUE), contains("std", ignore.case = TRUE))

##-------------Step 3 start -----------------------------
## Uses descriptive activity names to name the activities in the data set
## Adding an activity Column based on activity id in the data
## Already done in Step 1

##-------------Step 4 start -----------------------------

## Valid labeling done in Step 2 & Step 1 combined

##-------------Step 5 start -----------------------------
## From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.

subjectActivityGrp <- group_by(combinedData.mean_std, subject,activity)
tidyDataSet <- summarise_each(subjectActivityGrp,funs(mean))

write.table(tidyDataSet, "tidy_data.txt", row.name=FALSE)

