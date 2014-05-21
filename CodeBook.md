Code Book
=========================

Explanation of Variables Coding
===============================

Variables were coded based on the original names provided in the original data set, but modified to make
them more "Human Readable" and "Maching Readable".  Note that variable names are all lower case, except that 
the first letter of all words after the first word are capitalized to make the names easier to read.

* subject = the individual participant in the study (i=1,2,...,30)
* activity = the activity in which the participant was engaged at the time of the measurement(s)

Note: activities have been labeled as

1 = Walking
2 = Walking Upstairs
3 = Walking Downstairs
4 = Sitting
5 = Standing
6 = Laying


All other variable names are combinations of the following factors

* time = time domain signals
* frequency = frequency domain signals obtained by the dreaded Fast Fourier Transformation
* Body = acceleration signal due to body movement
* Gravity = acceleration signal due to gravity
* Accelerometer = collected from accelerometer sensor
* Gyroscope = collected from gyroscope sensor
* Jerk = body linear acceleration and angular velocity jerk signals
* Magnitude = magnitude of processed signal
* Mean = mean
* Std = standard deviation
* X = Euclidean direction in 3D space
* Y = Euclidean direction in 3D space
* Z = Euclidean direction in 3D space


List of All Variables
======================

* subject
* activity	
* timeBodyAccelerometerMeanX	
* timeBodyAccelerometerMeanY	
* timeBodyAccelerometerMeanZ	
* timeBodyAccelerometerStdX	
* timeBodyAccelerometerStdY	
* timeBodyAccelerometerStdZ	
* timeGravityAccelerometerMeanX	
* timeGravityAccelerometerMeanY	
* timeGravityAccelerometerMeanZ	
* timeGravityAccelerometerStdX	
* timeGravityAccelerometerStdY	
* timeGravityAccelerometerStdZ	
* timeBodyAccelerometerJerkMeanX	
* timeBodyAccelerometerJerkMeanY	
* timeBodyAccelerometerJerkMeanZ	
* timeBodyAccelerometerJerkStdX	
* timeBodyAccelerometerJerkStdY	
* timeBodyAccelerometerJerkStdZ	
* timeBodyGyroscopeMeanX	
* timeBodyGyroscopeMeanY	
* timeBodyGyroscopeMeanZ	
* timeBodyGyroscopeStdX	
* timeBodyGyroscopeStdY	
* timeBodyGyroscopeStdZ	
* timeBodyGyroscopeJerkMeanX	
* timeBodyGyroscopeJerkMeanY	
* timeBodyGyroscopeJerkMeanZ	
* timeBodyGyroscopeJerkStdX	
* timeBodyGyroscopeJerkStdY	
* timeBodyGyroscopeJerkStdZ	
* timeBodyAccelerometerMagnitudeMean	
* timeBodyAccelerometerMagnitudeStd	
* timeGravityAccelerometerMagnitudeMean	
* timeGravityAccelerometerMagnitudeStd	
* timeBodyAccelerometerJerkMagnitudeMean	
* timeBodyAccelerometerJerkMagnitudeStd	
* timeBodyGyroscopeMagnitudeMean	
* timeBodyGyroscopeMagnitudeStd	
* timeBodyGyroscopeJerkMagnitudeMean	
* timeBodyGyroscopeJerkMagnitudeStd	
* frequencyBodyAccelerometerMeanX	
* frequencyBodyAccelerometerMeanY	
* frequencyBodyAccelerometerMeanZ	
* frequencyBodyAccelerometerStdX	
* frequencyBodyAccelerometerStdY	
* frequencyBodyAccelerometerStdZ	
* frequencyBodyAccelerometerJerkMeanX	
* frequencyBodyAccelerometerJerkMeanY	
* frequencyBodyAccelerometerJerkMeanZ	
* frequencyBodyAccelerometerJerkStdX	
* frequencyBodyAccelerometerJerkStdY	
* frequencyBodyAccelerometerJerkStdZ	
* frequencyBodyGyroscopeMeanX	
* frequencyBodyGyroscopeMeanY	
* frequencyBodyGyroscopeMeanZ	
* frequencyBodyGyroscopeStdX	
* frequencyBodyGyroscopeStdY	
* frequencyBodyGyroscopeStdZ	
* frequencyBodyAccelerometerMagnitudeMean	
* frequencyBodyAccelerometerMagnitudeStd	
* frequencyBodyAccelerometerJerkMagnitudeMean	
* frequencyBodyAccelerometerJerkMagnitudeStd	
* frequencyBodyGyroscopeMagnitudeMean	
* frequencyBodyGyroscopeMagnitudeStd	
* frequencyBodyGyroscopeJerkMagnitudeMean	
* frequencyBodyGyroscopeJerkMagnitudeStd



Variable Selection
===================

* Variables representing mean values in the original data set were included in this exercise
* Note: variables representing weighted averages (i.e. meanFreq) in the original data set were excluded
* Variables representing standard deviations in the original data set were included in this exercise
* No other variables (mad, min, max, sma, enery, iqr, entropy, arCoeff, ..., angle) were included...




Calculations (Transformations)
===============================

Simple means were calculated for each of the mean and standard deviation variables for each subject * activity combination
resulting in 180 rows and 68 columns