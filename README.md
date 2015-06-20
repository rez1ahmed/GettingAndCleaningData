# Getting And Cleaning Data

## Course Project

#### Submission items: 
1. a tidy data set as described below (named "TidyData.txt"), 
2. a code book that describes the variables, the data, and any transformations or 
work that you performed to clean up the data called "CodeBook.md", and 
3. a README.md in the repo describing items. 

#### Transformation steps:
As part of the project, we should create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#### Steps to execute the script

1. Download and unzip the following dataset to a directory: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Store the script "run_analysis.R" in the same directory. Note that the script 
expects the data to be under "UCI HAR Dataset" folder.
3. Set the script containing folder as your working directory in RStudio.
4. Run source("run_analysis.R"). This will generate the tidy dataset call "TidyData.txt"
in the working directory.

#### Additional Note
"codebook.md" and "codebook.html" files were auto generated based on 
"codebook.Rmd" file using the Knit tool in R.

