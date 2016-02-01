---
title: "README.md"
author: "Chris Cobb"
date: "January 31, 2016"
output: html_document
---

##The Assignment
This is Assignment #1 for the Getting and Cleaning Data class

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


##The program

Load in the X_test and X_Train data.  The data is loaded as a fixed format, which is slow, so caching is implemented
to store the data using the save() command so future runs can load the saved data.

The results of these two sets are then joined together.

The row names are then loaded from features.txt.  Found the function make.names very useful to clean up bad characters and make the names unique.  Add this to the results data frame as column names.

Once adding the names uses grep to only select columns with names containing mean()/mean.. and std()/std..

The load the activity data and activty descriptions from y_train, y_test and activity_labels.

join together the y_test and y_train, add the column label of activity.  Convert the column to a factor and assign the labels from the activity_labels file.

loan the subject date from subject_train and subject_test.  

Join together the y_test and y_train and assign a column name of subject

bind the activity and subject columns to the results.

Update the column names to the columns starting with t are renamed to being with time and columns starting with f are renamed to begin with frequency.

Group the results by subject and result and summarize each column by subject, result with a mean of the results of each column.

