#Getting-and-cleaning-data: Assignment

Quoting from the assignment instruction:
"The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."

#This repository contains:

1. run_analysis.R - the script file which does all the steps mentioned above to create a tidy data set
2. README.md file - this file
3. CodeBook.md file - information on steps followed to get the tidy dataset.

#How the script works:
1. download the zip file from url specified
2. unzip raw data to UCI HAR Dataset 
3. run the run_analisys.R script - the library required are already listed in the script itself.
4. once script runs, the tidy, mean_std_avg.txt, can be found at your main directory.

#Steps used in the script:
set the working directory --> call the library needed(dplyr, plyr) --> load feature.txt and activity_labels.txt into R
--> load the training and test data files into R --> Merge the test and training datasets --> create column names for merged dataset from features dataset and name 562nd column as subject and 563rd as label --> pull only columns that has column names with mean and std in them --> label with decriptive variable names --> create tidy dataset --> write tidy dataset to a text file.


