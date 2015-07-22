# 0) load and install required packages and prepare data ---------
##load packages
if(!require(data.table)) {
      install.packages("data.table")
      library(data.table)
}

## checking wether the file already exists, if not download the zip-file
if (file.exists("getdata-projectfiles-UCI HAR Dataset.zip")) {
      print("data for the project exists")
} else {
      print("data for the project is beeing downloaded")
      download.file(url       = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                    destfile  = "getdata-projectfiles-UCI HAR Dataset.zip")
}

## extract all files in the zip-file
if (file.exists("UCI HAR Dataset")){
      print("data for the project already exists")
} else{
      print("data is beeing unziped")
      unzip("getdata-projectfiles-UCI HAR Dataset.zip")
}

# 1) merge the training and the test set to create one data set -----------
## read all test data
test.x <- data.table(read.table(file = "./UCI HAR Dataset/test/X_test.txt"))
test.y <- data.table(read.table(file = "./UCI HAR Dataset/test/y_test.txt"))
test.subject <- data.table(read.table(file = "./UCI HAR Dataset/test/subject_test.txt"))

## read all train data
train.x <- data.table(read.table(file = "./UCI HAR Dataset/train/X_train.txt"))
train.y <- data.table(read.table(file = "./UCI HAR Dataset/train/y_train.txt"))
train.subject <- data.table(read.table(file = "./UCI HAR Dataset/train/subject_train.txt"))

## merge test and train data
merge.x <- rbind(test.x, train.x)
merge.y <- rbind(test.y, train.y)
merge.subject <- rbind(test.subject, train.subject)


# 2) extracts only the measurements on the mean and standard deviation --------
## read all features and set readable names
features <- data.table(read.table("./UCI HAR Dataset/features.txt"))
setnames(features, c("V1", "V2"), c("id", "description"))
## filter the features to get measurements on the mean and standard deviation
features.mean <- features[description %like% "mean"]
features.std <- features[description %like% "std"]

## naming and filtering of test data
setnames(merge.x, as.character(features$description))
merge.x.mean.std <- merge.x[, c(features.mean$id, features.std$id), with = FALSE]


# 3) use descriptive activity names to name the activities in the data set --------
## naming activity data
setnames(merge.y, "Activity")
activity.labels <- data.table(read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE))
merge.y$Activity <- factor(merge.y$Activity, labels = activity.labels$V2)


# 4) appropriately label the data set with descriptive variable names --------
## naming of subject data
setnames(merge.subject, "Subject")

## bind all available data sets
data <- cbind (merge.subject, merge.y, merge.x.mean.std)

## label the data set with descriptive variable names
data.names <- names(data)
data.names <- gsub("Acc", "Accelerometer", data.names)
data.names <- gsub("^t", "Time", data.names)
data.names <- gsub("^f", "Frequency", data.names)
data.names <- gsub("Gyro", "Gyroscope", data.names)
data.names <- gsub("BodyBody", "Body", data.names)
data.names <- gsub("Mag", "Magnitude", data.names)
data.names <- gsub("^t", "Time", data.names)
data.names <- gsub("^f", "Frequency", data.names)
data.names <- gsub("tBody", "TimeBody", data.names)
data.names <- gsub("-mean\\(\\)", "Mean", data.names, ignore.case = TRUE)
data.names <- gsub("-std\\(\\)", "STD", data.names, ignore.case = TRUE)
data.names <- gsub("-freq\\(\\)", "Frequency", data.names, ignore.case = TRUE)
data.names <- gsub("-meanFreq\\(\\)", "MeanFrequency", data.names)
data.names <- gsub("angle", "Angle", data.names)
data.names <- gsub("gravity", "Gravity", data.names)
setnames(data, data.names)
# setnames(data, tolower(data.names)) # lower case naming is illegible in this situation

# 5) create a second, independent tidy data set with the average of each variable for each activity and each subject --------
## grouping of data by subject and activity and perform the computation of the mean values
data.tidy <- data[, lapply(.SD, mean), by = list(Subject, Activity)]
##order data for nicer reading
data.tidy <- data.tidy[order(Subject, Activity)]
names(data.tidy)

## write the tidy data set with the specified options
write.table(data.tidy, file = "subject_activity_means.txt", row.names=FALSE)