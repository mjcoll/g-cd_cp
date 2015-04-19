## STEP 1: Merge the test and train data sets

# Read the feature names
features <- read.table("UCI HAR Dataset/features.txt", colClasses="character")
features_names <- features[,2]

# Read and compile the test data, adding variable names as it goes (part of STEP 4)
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
names(X_test) <- features_names

y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
names(y_test) <- "activityid"

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
names(subject_test) <- "subjectid"

test_data <- cbind(subject_test, y_test, X_test)

# Read and compile the train data
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
names(X_train) <- features_names

y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
names(y_train) <- "activityid"

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
names(subject_train) <- "subjectid"

train_data <- cbind(subject_train, y_train, X_train)

# Combine the test and train data. rbind used because identical columns in each data set
merged_data <- rbind(test_data, train_data)


## STEP 2: Extract the columns with mean and standard deviations

# Find any columns with 'mean' or 'std' in that exact case
mean_cols <- grep("mean()", names(merged_data), value=TRUE)
std_cols <- grep("std()", names(merged_data), value=TRUE)
mean_std_cols <- c(mean_cols, std_cols)

# Create a subset with only the ID columns and those with mean/std data
mean_std_data <- cbind(merged_data[,1:2],merged_data[,mean_std_cols])


## STEP 3: Replace the activity levels with descriptive names

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", colClasses="character")
names(activity_labels) <- c("activityid", "activityname")

named_mean_std_data <- merge(activity_labels, mean_std_data, by="activityid", all=TRUE)


## STEP 4: Label data set with descriptive variable names
# This was already done as part of STEP 1


## STEP 5: Data set with average of each variable for each activity and each subject

# Use data table class to group by ID/name columns and take mean of mean/std columns
library(data.table)
dt <- data.table(named_mean_std_data)
summary_data <- dt[,lapply(.SD,mean), by=list(activityid, activityname, subjectid)]

## Alternate dplyr method; achieves same result as data.table
#library(dplyr)
#grouped_data <- group_by(named_mean_std_data, activityid, activityname, subjectid)
#summary_data <- summarise_each(grouped_data, funs(mean))

# Write the data to a text file for submission
write.table(summary_data, file="summary_data.txt", row.names=FALSE)