This Readme explains how the instructions from the Getting and Cleaning Data course offered by John Hopkins by Coursera was performed. This code is in the R programming language.

## Introduction

The assignment expressed the following 5 requirements

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Data Processing Flow

The code itself is well commented, but here's how the data flows through the script:

1. The Activity and Subject data is loaded. Activities are given labels. They are still divided into test and trial data sets.
2. The headers are read in. Anything with the word "mean" or "std" is selected for inclusion, the rest are noted.
3. The actual test/ trial data is read in. Columns which are not used are skipped.
4. The Activity and Subject Numbers are attached to the data set.
5. The data is merged.
6. The data set is ordered by subject, then Activity.
7. The data is written out.
8. The data is split by Activity and Subject
9. The mean of each is found, and put into a table.
10. The table is written to the disk.

## Data Source

This data comes from the "Human Activity Recognition Using Smartphones Data Set" data set, found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

