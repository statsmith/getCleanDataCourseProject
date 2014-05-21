Getting and Cleaning Data Course Project:
========================================

David Smith
Student
Getting and Cleaning Data
Coursera and Johns Hopkins University

========================================

While the purpose of this project is simply to put our new data science skills
to the test, it is based on "wearable computing" technology.  As such, the data
is supplied by the UCI Machine Learning Repository at the following website:
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

As documented in the source README file that accompanies the data, the data comes from
experiments on a group of 30 volunteers (19-48 yrs) in which smart phone sensors continuously
tracked their movement using an accelerometer and gyroscope in all dimensions.  See the 
source documentation or contact activityrecognition@smartlab.ws for details.


Data
=====

Data for this project was downloaded manually on 2014 05 16 from the link on the course project website

* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
* Data was then unzipped and saved to a local directory


Script
=======

The script "run_analysis.R" does the following:

* Merges the training and test sets to create one data set
* Extracts only measurements on means and standard deviations for each measurement
* Applies descriptive acitivity names to the activities in the data set
* Calculates averages for each subject, for each activity, for each variable
* Creates human readable and machine readable variable names from the original names in the raw data
* Saves the "tidy data" to a txt file


