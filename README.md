### Introduction

The script run_analysis.R is used to clean up and summarize data from the UCI "Humany Activity Recognition Using Smartphones Data Set."

The data set can be found here: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Detailed Description

The script run_analysis.R performs a series of steps to transform and summarize the UCI HAR data set:

1. Reads in the test and train data set and labels all variables.
2. Combines the test and train data sets into one data set.
3. Extracts only the data that contains mean or standard deviation values. Specifically, the script looks for the phrase "mean()" or "std()", in all lowercase, from the feature labels.
4. Adds the activity name to each record based on the activity ID number.
5. Summarizes the data by activity and subject and calculates an average of each mean and standard deviation variable. Outputs a file "summary_data.txt".

### Instructions

The following steps are required to run this scripts and achieve the desired results described above:

1. Download the script "run_analysis.R" into your desired directory.
2. Download the UCI data zip file set from the link above, by navigating to the "Data Folder" download page.
3. Extract the zip file using a program such as WinZip or 7-Zip in the same directory that "run_analysis.R" is saved. The folder "UCI HAR Dataset" should be on the same level as the script, and one level down from "UCI HAR Dataset" should be 4 text files and 2 directories (test and train).
4. Using the R command line and the setwd() command, set your working directory to the same directory that the script and data set are stored in.
5. Run the script using the command source("run_analysis.R"). The summary data will be output to a file named "summary_data.txt" in the working directory.

### Dependencies

This script requires the data.table package to be installed.