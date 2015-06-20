library(data.table)
library(dplyr)

###################################################################
# 1. Merge the training and the test sets to create one data set.
###################################################################

# Read all train data
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
trainX <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
trainY <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)

# Read all test data
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
testX <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
testY <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)

# Merging train and test data for each item
allSubject <- rbind(trainSubject, testSubject)
allX <- rbind(trainX, testX)
allY <- rbind(trainY, testY)

# Load the feature (X) names and activity (Y) labels
features <- read.table("UCI HAR Dataset/features.txt")

# Consider the second column of the features data frame as the labels
labelX <- t(features[2])

colnames(allX) <- labelX
colnames(allY) <- "ActivityID"
colnames(allSubject) <- "SubjectID"

# Combined dataset
combinedData <- cbind(allSubject,allX,allY)

# Printing the dimenstion of the combined data
cat("Dimension of the Combined Data: ", dim(combinedData), "\n")


###################################################################
# 2. Extract only the measurements on the mean and  
#    standard deviation for each measurement. 
###################################################################

# First separate the features with mean and std. dev in their name
cnames <- names(allX)
extCols <- grep(".*Mean.*|.*Std.*", cnames, , ignore.case=TRUE)
extX <- allX[,extCols]

# Subset of the data
subsetData <- cbind(allSubject, extX, allY)

# Printing the dimenstion of the combined data
cat ("Dimension of the Extracted Data: ", dim(subsetData),  "\n")

dim(subsetData)

###################################################################
# 3. Use descriptive activity names to name the 
#    activities in the data set 
###################################################################

activities <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
nactivity <- nrow(activities)

tempActIDs <- as.character(subsetData$ActivityID)
for (i in 1:nactivity){
    tempActIDs[tempActIDs[] == i] <- as.character(activities[i,2])
}
subsetData$ActivityID <- as.factor(tempActIDs)

# Changing the name of the column from ActivityID to Activity
ncols <- ncol(subsetData)
colnames(subsetData)[ncols] <- "Activity"

# Printing the different types of activities
cat ("List of Descriptive Activity Names: ", levels(subsetData$Activity), "\n")


###################################################################
# 4. Appropriately labels the data set with descriptive 
#    variable names.  
###################################################################

cat("Original labels of the features: \n")
print(names(subsetData))

# Replace t with Time
cat("Replace all variable names starting with 't' to 'Time' \n")
names(subsetData) <- gsub("^t", "Time", names(subsetData))

# Replace f with Freq
cat("Replace all variable names starting with 'f' to 'Freq' \n")
names(subsetData) <- gsub("^f", "Freq", names(subsetData))

# Replace Mag with Magnitude
cat("Replace all variable names starting with 'Mag' to 'Magnitude' \n")
names(subsetData) <- gsub("Mag", "Magnitude", names(subsetData))

# Replace BodyBody with Body
cat("Replace all variable names starting with 'BodyBody' to 'Body' \n")
names(subsetData) <- gsub("BodyBody", "Body", names(subsetData))

# Replace Acc with Accelerometer
cat("Replace all variable names starting with 'Acc' to 'Accelerometer' \n")
names(subsetData) <- gsub("Acc", "Accelerometer", names(subsetData))

# Replace 'tBody with 'TimeBody'
cat("Replace all variable names starting with 'tBody' to 'TimeBody' \n")
names(subsetData) <- gsub("tBody", "TimeBody", names(subsetData))

cat("Updated labels of the features: \n")
print(names(subsetData))


###################################################################
# 5. From the data set in step 4, create a second, independent 
#    tidy data set with the average of each variable for each 
#    activity and each subject. 
###################################################################

tidyData<-aggregate(. ~SubjectID + Activity, subsetData, mean)
tidyData<-tidyData[order(tidyData$SubjectID,tidyData$Activity),]
write.table(tidyData, file="TidyData.txt", row.names = FALSE)

