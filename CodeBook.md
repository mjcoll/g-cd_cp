### Introduction

This code book provides details on the variables, summary data, and study design for the script run_analysis.R

### Variables

* activityid: This variable is the number corresponding to each activity type. It comes from the files y_test.txt and y_train.txt.
* activityname: This variable is the word corresponding to the activityid number to make it easier to see what activity type a record corresponds to. It comes from merging data with the activityid and the file activity_labels.txt.
* subjectid: This variable is the number corresponding to each subject. It comes from the files subject_test.txt and subject_train.txt.
* The average value of the mean (mean()) and standard deviation (std()) of each of the following variables is output for each activity and subject pair. For variables ending in "-XYZ", there is a corresponding value for each dimension X, Y and Z. Variables beginning with 't' are from the time domain and variables beginning with 'f' are from the frequency domain.
    + tBodyAcc-XYZ
    + tGravityAcc-XYZ
    + tBodyAccJerk-XYZ
    + tBodyGyro-XYZ
    + tBodyGyroJerk-XYZ
    + tBodyAccMag
    + tGravityAccMag
    + tBodyAccJerkMag
    + tBodyGyroMag
    + tBodyGyroJerkMag
    + fBodyAcc-XYZ
    + fBodyAccJerk-XYZ
    + fBodyGyro-XYZ
    + fBodyAccMag
    + fBodyAccJerkMag
    + fBodyGyroMag
    + fBodyGyroJerkMag

### Study Design

All data used in this analysis was sourced from the UCI "Humany Activity Recognition Using Smartphones Data Set."

The data set can be found here: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)