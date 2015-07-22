# Course Project - Getting and Cleaning Data

## Abstract
This *README.md* is part of the course project 'Getting and Cleaning Data'. It is meant to explain how the analysis by *run_analysis.R* is done. Furthermore it gives an overview
of the used data.

## Data Source
The analyzed data is data collected from the accelerometers from a Samsung Galaxy S smartphone. [1]

A full description is available at the site where the data was obtained:

- [Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "Data Set") 
- [Data Folder](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/ "Data Folder")
- [Data Set Description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones# "Data Set Description")

### Code Book
The *CodeBook.md* file explains the transformations performed and the resulting data and variables.

## Analysis
The analysis is comprised of 6 parts, that follow the definiton of tasks in the course project assignment:

1. load and install required packages and prepare data
2. merge the training and the test set to create one data set
3. extracts only the measurements on the mean and standard deviation
4. use descriptive activity names to name the activities in the data set
5. appropriately label the data set with descriptive variable names
6. create a second, independent tidy data set with the average of each variable for each activity and each subject

Hereafter the different steps are explained in more detail. Please note, that the skript *run_analysis.R* itself is structured accordingly by sections and contains all necessary comments.

1. load and install required packages and prepare data
	- The package [data.table](https://cran.r-project.org/web/packages/data.table/index.html "data.table") is required and is beeing installed if necessary
	- It is checked wether the data set already exists, if not the zip-file is downloaded and saved
	- After that all files are extracted
2. merge the training and the test set to create one data set
	- All test and train data is read (x, y, subject)
	- Test and train data are merged
3. extracts only the measurements on the mean and standard deviation
	- All features are read in from the corresponding file (features.txt)
	- The features are filtered to get measurements on the mean and standard deviation
	- For easier understanding and readability there is a naming and filtering of test data
4. use descriptive activity names to name the activities in the data set
	- Activity data is renamed according to the labels in the data set (activity_labels.txt)
5. appropriately label the data set with descriptive variable names
	- Naming of subject data
	- Binding all available data sets
	- Data set is labeled with descriptive variable names
6. create a second, independent tidy data set with the average of each variable for each activity and each subject
	- Grouping of data by subject and activity and perform the computation of the mean values
	- Ordering of the data for nicer reading
	- Write the tidy data set with the specified options

## References
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

## Author
Marco Wirth - marco@wirth.it
