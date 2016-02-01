---
title: "codebook"
author: "Chris Cobb"
date: "January 31, 2016"
output: html_document
---

## Codebook
I only vaguly understand this data after reading the documents but here is my best interpetation
of the data.

This data set contains the mean of each of the groups of activity and subject of a larger dataset.

## Fields
|field 						| description | unit |
|---------------------------|--------------------|----------------------------------|
|subject | The number of the test subject | subject number|
|activity |The activity that was being performed when the readings were taken | activity |
|time.bodyacc.mean.x		 		|Body Acceleration, Mean, X Axis |time domain |
|time.bodyacc.mean.y 				|Body Acceleration, Mean, Y Axis |time domain |
|time.bodyacc.mean.z		 		|Body Acceleration, Mean, Z Axis |time domain |
|time.bodyacc.std.x 				|Body Acceleration, Stand Deviation, X Axis |time domain |
|time.bodyacc.std.			 		|Body Acceleration, Stand Deviation, Y Axis  |time domain |
|time.bodyacc.std.			 		|Body Acceleration, Stand Deviation, Z Axis  |time domain |
|time.gravityacc.mean.x 			|Gravity Acceleration, Mean, X Axis  |time domain |
|time.gravityacc.mean.			 	|Gravity Acceleration, Mean, Y Axis |time domain |
|time.gravityacc.mean.z 			|Gravity Acceleration, Mean, Z Axis |time domain |
|time.gravityacc.std.		 		|Gravity Acceleration, Standard Deviation, X Axis |time domain |
|time.gravityacc.std.y 				|Gravity Acceleration, Standard Deviation, Y Axis |time domain |
|time.gravityacc.std.		 		|Gravity Acceleration, Standard Deviation, Z Axis |time domain |
|time.bodyaccjerk.mean.x 			|Body Acceleration Jerk, Mean, X Axis  |time domain |
|time.bodyaccjerk.mean.y		 	|Body Acceleration Jerk, Mean, Y Axis   |time domain |
|time.bodyaccjerk.mean.z		 	|Body Acceleration Jerk, Mean, Z Axis   |time domain |
|time.bodyaccjerk.std.			 	|Body Acceleration Jerk, Standard Deviation, X Axis |time domain |
|time.bodyaccjerk.std.			 	|Body Acceleration Jerk, Standard Deviation, Y Axis |time domain |
|time.bodyaccjerk.std.			 	|Body Acceleration Jerk, Standard Deviation, Z Axis |time domain |
|time.bodygyro.mean.		 		|Body Gyro, Mean, X Axis |time domain |
|time.bodygyro.mean.y 				|Body Gyro, Mean, Y Axis |time domain |
|time.bodygyro.mean.z 				|Body Gyro, Mean, Z Axis |time domain |
|time.bodygyro.std.x 				|Body Gyro, Standard Deviation, X Axis |time domain |
|time.bodygyro.std.y		 		|Body Gyro, Standard Deviation, Y Axis |time domain |
|time.bodygyro.std.z 				|Body Gyro, Standard Deviation, Z Axis |time domain |
|time.bodygyrojerk.mean.x 			|Body Gyro Jerk, Mean, X Axis |time domain |
|time.bodygyrojerk.mean.y 			|Body Gyro Jerk, Mean, Y Axis |time domain |
|time.bodygyrojerk.mean.z 			|Body Gyro Jerk, Mean, Z Axis |time domain |
|time.bodygyrojerk.std.x 			|Body Gyro Jerk, Standard Deviation, X Axis|time domain |
|time.bodygyrojerk.std.y 			|Body Gyro Jerk, Standard Deviation, Y Axis |time domain |
|time.bodygyrojerk.std.z 			|Body Gyro Jerk, Standard Deviation, Z Axis |time domain |
|time.bodyaccmag.mean 				|Body Acceleration Magnitutde, Mean |time domain |
|time.bodyaccmag.std 				|Body Acceleration Magnitutde, Standard Deviation |time domain |
|time.gravityaccmag.mean 			|Gravity Acceleration Magnitutde, Mean |time domain |
|time.gravityaccmag.std 			|Gravity Acceleration Magnitutde, Standard Deviation |time domain |
|time.bodyaccjerkmag.mean 			|Body Acceleration Jerk Magnitutde, Mean |time domain |
|time.bodyaccjerkmag.std 			|Body Acceleration Jerk Magnitutde, Standard Deviation |time domain |
|time.bodygyromag.mean 				|Body Gyro Magnitutde, Mean |time domain |
|time.bodygyromag.std 				|Body Gyro Magnitutde, Standard Deviation  |time domain |
|time.bodygyrojerkmag.mean 			|Body Gyro Jerk Magnitutde, Mean  |time domain |
|time.bodygyrojerkmag.std 			|Body Gyro Jerk Magnitutde, Standard Deviation |time domain |
|frequency.bodyacc.mean.x 			|See equivalant time domain field for description |frequency domain |
|frequency.bodyacc.mean.y 			|See equivalant time domain field for description |frequency domain|
|frequency.bodyacc.mean.z 			|See equivalant time domain field for description |frequency domain |
|frequency.bodyacc.std.x 			|See equivalant time domain field for description |frequency domain |
|frequency.bodyacc.std.y 			|See equivalant time domain field for description |frequency domain |
|frequency.bodyacc.std.z 			|See equivalant time domain field for description |frequency domain |
|frequency.bodyaccjerk.mean.x 		|See equivalant time domain field for description |frequency domain |
|frequency.bodyaccjerk.mean.y 		|See equivalant time domain field for description |frequency domain |
|frequency.bodyaccjerk.mean.z 		|See equivalant time domain field for description |frequency domain |
|frequency.bodyaccjerk.std.x 		|See equivalant time domain field for description |frequency domain |
|frequency.bodyaccjerk.std.y 		|See equivalant time domain field for description |frequency domain |
|frequency.bodyaccjerk.std.z 		|See equivalant time domain field for description |frequency domain |
|frequency.bodygyro.mean.x 			|See equivalant time domain field for description |frequency domain |
|frequency.bodygyro.mean.y 			|See equivalant time domain field for description |frequency domain |
|frequency.bodygyro.mean.z 			|See equivalant time domain field for description |frequency domain |
|frequency.bodygyro.std.x 			|See equivalant time domain field for description |frequency domain |
|frequency.bodygyro.std.y 			|See equivalant time domain field for description |frequency domain |
|frequency.bodygyro.std.z 			|See equivalant time domain field for description |frequency domain |
|frequency.bodyaccmag.mean 			|See equivalant time domain field for description |frequency domain |
|frequency.bodyaccmag.std 			|See equivalant time domain field for description |frequency domain |
|frequency.bodybodyaccjerkmag.mean 	|See equivalant time domain field for description |frequency domain |
|frequency.bodybodyaccjerkmag.std 	|See equivalant time domain field for description |frequency domain |
|frequency.bodybodygyromag.mean 	|See equivalant time domain field for description |frequency domain |
|frequency.bodybodygyromag.std 		|See equivalant time domain field for description |frequency domain |
|frequency.bodybodygyrojerkmag.mean |See equivalant time domain field for description |frequency domain |
|frequency.bodybodygyrojerkmag.std 	|See equivalant time domain field for description |frequency domain |

