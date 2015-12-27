# Code Book File: HAR_AVG_by_Subject_Activities.txt

## Original Data Collection URL
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Original Data Features Explained (see features_info.txt)

The features and transformations selected for this project come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

## Tidy Data Features And Raw Data Transformation

### This project makes use of only the following training, test, features and activitiy labels data files:

"UCI HAR Dataset/train/subject_train.txt"
"UCI HAR Dataset/train/X_train.txt"
"UCI HAR Dataset/train/y_train.txt"

"UCI HAR Dataset/test/subject_test.txt"
"UCI HAR Dataset/test/X_test.txt"
"UCI HAR Dataset/test/y_test.txt"

"UCI HAR Dataset/features.txt"
"UCI HAR Dataset/activity_labels.txt"

### The first transformation to the raw data happens while loading the activities labels. The "Activity.ID" and "Subject" column names are added to enbale the use of join() operation by Activity.ID in step 3.

### Step 1: Merge the training and the test sets to create short form data set through columnwise binding, then rowwise binding.

### Step 2: Extracts only the measurements on the mean and standard deviation for each measurement per subject & activity

### Step 3: Use descriptive activity names to name the activities in the data set. First, joint the data with the activity labels and delete the last column created by join operation

### Step 4: Appropriately labels the data set with descriptive variable names using the following transformation: 

"t" -> "TimeDomain"
"f" -> "FrequencyDomain"
"BodyBody" -> "Body"
"Acc" -> "Acceleration"
"GyroJerk" -> "AngularAcceleration"
"Gyro" -> "AngularSpeed"
"Mag" -> "Magnitude"
"meanFreq" -> "meanFrequency"
"std" -> "StandardDeviation"

Finally, removing pran's ()

### Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Write the tidy data to text file without the default row names

### Feature Names Transformation Table

Tidy Data Feature Name                                            | Data Type, and Original Feature Computed with mean() or std()                                
----------------------------------------------------------------- | ------------------------------------------------------------- 
TimeDomain.BodyAcceleration-mean-X                                | num, tBodyAcc-X mean value  
TimeDomain.BodyAcceleration-mean-Y                                | num, tBodyAcc-Y mean value    
TimeDomain.BodyAcceleration-mean-Z                                | num, tBodyAcc-Z mean value    
TimeDomain.BodyAcceleration-StandardDeviation-X                   | num, tBodyAcc-X standard deviation value    
TimeDomain.BodyAcceleration-StandardDeviation-Y                   | num, tBodyAcc-Y standard deviation value      
TimeDomain.BodyAcceleration-StandardDeviation-Z                   | num, tBodyAcc-Z standard deviation value      
TimeDomain.GravityAcceleration-mean-X                             | num, tGravityAcc-X mean value 
TimeDomain.GravityAcceleration-mean-Y                             | num, tGravityAcc-Y mean value 
TimeDomain.GravityAcceleration-mean-Z                             | num, tGravityAcc-Z mean value   
TimeDomain.GravityAcceleration-StandardDeviation-X                | num, tGravityAcc-X standard deviation value      
TimeDomain.GravityAcceleration-StandardDeviation-Y                | num, tGravityAcc-Y standard deviation value     
TimeDomain.GravityAcceleration-StandardDeviation-Z                | num, tGravityAcc-Z standard deviation value     
TimeDomain.BodyAccelerationJerk-mean-X                            | num, tBodyAccJerk-X mean value  
TimeDomain.BodyAccelerationJerk-mean-Y                            | num, tBodyAccJerk-Y mean value   
TimeDomain.BodyAccelerationJerk-mean-Z                            | num, tBodyAccJerk-Z mean value   
TimeDomain.BodyAccelerationJerk-StandardDeviation-X               | num, tBodyAccJerk-X StandardDeviation value   
TimeDomain.BodyAccelerationJerk-StandardDeviation-Y               | num, tBodyAccJerk-Y StandardDeviation value    
TimeDomain.BodyAccelerationJerk-StandardDeviation-Z               | num, tBodyAccJerk-Z StandardDeviation value     
TimeDomain.BodyAngularSpeed-mean-X                                | num, tBodyGyro-X mean value  
TimeDomain.BodyAngularSpeed-mean-Y                                | num, tBodyGyro-Y mean value   
TimeDomain.BodyAngularSpeed-mean-Z                                | num, tBodyGyro-Z mean value   
TimeDomain.BodyAngularSpeed-StandardDeviation-X                   | num, tBodyGyro-X StandardDeviation value   
TimeDomain.BodyAngularSpeed-StandardDeviation-Y                   | num, tBodyGyro-Y StandardDeviation value  
TimeDomain.BodyAngularSpeed-StandardDeviation-Z                   | num, tBodyGyro-Z StandardDeviation value  
TimeDomain.BodyAngularAcceleration-mean-X                         | num, tBodyGyroJerk-X mean value    
TimeDomain.BodyAngularAcceleration-mean-Y                         | num, tBodyGyroJerk-Y mean value    
TimeDomain.BodyAngularAcceleration-mean-Z                         | num, tBodyGyroJerk-Z mean value  
TimeDomain.BodyAngularAcceleration-StandardDeviation-X            | num, tBodyGyroJerk-X Standard Deviation value  
TimeDomain.BodyAngularAcceleration-StandardDeviation-Y            | num, tBodyGyroJerk-Y Standard Deviation value   
TimeDomain.BodyAngularAcceleration-StandardDeviation-Z            | num, tBodyGyroJerk-Z Standard Deviation value  
TimeDomain.BodyAccelerationMagnitude-mean                         | num, tBodyAccMag mean value   
TimeDomain.BodyAccelerationMagnitude-StandardDeviation            | num, tBodyAccMag Standard Deviation value   
TimeDomain.GravityAccelerationMagnitude-mean                      | num, tGravityAccMag mean value  
TimeDomain.GravityAccelerationMagnitude-StandardDeviation         | num, tGravityAccMag Standard Deviation value   
TimeDomain.BodyAccelerationJerkMagnitude-mean                     | num, tBodyAccJerkMag mean value   
TimeDomain.BodyAccelerationJerkMagnitude-StandardDeviation        | num, tBodyAccJerkMag Standard Deviation value  
TimeDomain.BodyAngularSpeedMagnitude-mean                         | num, tBodyGyroMag mean value  
TimeDomain.BodyAngularSpeedMagnitude-StandardDeviation            | num, tBodyGyroMag Standard Deviation value  
TimeDomain.BodyAngularAccelerationMagnitude-mean                  | num, tBodyGyroJerkMag mean value  
TimeDomain.BodyAngularAccelerationMagnitude-StandardDeviation     | num, tBodyGyroJerkMag Standard Deviation value  
FrequencyDomain.BodyAcceleration-mean-X                           | num, fBodyAcc-X mean value  
FrequencyDomain.BodyAcceleration-mean-Y                           | num, fBodyAcc-Y mean value   
FrequencyDomain.BodyAcceleration-mean-Z                           | num, fBodyAcc-Z mean value    
FrequencyDomain.BodyAcceleration-StandardDeviation-X              | num, fBodyAcc-X Standard Deviation value  
FrequencyDomain.BodyAcceleration-StandardDeviation-Y              | num, fBodyAcc-Y Standard Deviation value  
FrequencyDomain.BodyAcceleration-StandardDeviation-Z              | num, fBodyAcc-Z Standard Deviation value  
FrequencyDomain.BodyAcceleration-meanFrequency-X                  | num, fBodyAcc-meanFreq-X  
FrequencyDomain.BodyAcceleration-meanFrequency-Y                  | num, fBodyAcc-meanFreq-Y   
FrequencyDomain.BodyAcceleration-meanFrequency-Z                  | num, fBodyAcc-meanFreq-Z   
FrequencyDomain.BodyAccelerationJerk-mean-X                       | num, fBodyAccJerk-X mean value  
FrequencyDomain.BodyAccelerationJerk-mean-Y                       | num, fBodyAccJerk-Y mean value   
FrequencyDomain.BodyAccelerationJerk-mean-Z                       | num, fBodyAccJerk-X mean value   
FrequencyDomain.BodyAccelerationJerk-StandardDeviation-X          | num, fBodyAccJerk-X Standard Deviation value  
FrequencyDomain.BodyAccelerationJerk-StandardDeviation-Y          | num, fBodyAccJerk-Y Standard Deviation value  
FrequencyDomain.BodyAccelerationJerk-StandardDeviation-Z          | num, fBodyAccJerk-Z Standard Deviation value 
FrequencyDomain.BodyAccelerationJerk-meanFrequency-X              | num, fBodyAccJerk-meanFreq-X  
FrequencyDomain.BodyAccelerationJerk-meanFrequency-Y              | num, fBodyAccJerk-meanFreq-Y   
FrequencyDomain.BodyAccelerationJerk-meanFrequency-Z              | num, fBodyAccJerk-meanFreq-Z   
FrequencyDomain.BodyAngularSpeed-mean-X                           | num, fBodyGyro-X mean value  
FrequencyDomain.BodyAngularSpeed-mean-Y                           | num, fBodyGyro-Y mean value  
FrequencyDomain.BodyAngularSpeed-mean-Z                           | num, fBodyGyro-Z mean value  
FrequencyDomain.BodyAngularSpeed-StandardDeviation-X              | num, fBodyGyro-X Standard Deviation value  
FrequencyDomain.BodyAngularSpeed-StandardDeviation-Y              | num, fBodyGyro-Y Standard Deviation value   
FrequencyDomain.BodyAngularSpeed-StandardDeviation-Z              | num, fBodyGyro-Z Standard Deviation value   
FrequencyDomain.BodyAngularSpeed-meanFrequency-X                  | num, fBodyGyro-meanFreq-X  
FrequencyDomain.BodyAngularSpeed-meanFrequency-Y                  | num, fBodyGyro-meanFreq-Y   
FrequencyDomain.BodyAngularSpeed-meanFrequency-Z                  | num, fBodyGyro-meanFreq-Z    
FrequencyDomain.BodyAccelerationMagnitude-mean                    | num, fBodyAccMag mean value   
FrequencyDomain.BodyAccelerationMagnitude-StandardDeviation       | num, fBodyAccMag Standard Deviation value   
FrequencyDomain.BodyAccelerationMagnitude-meanFrequency           | num, fBodyAccMag-meanFreq   
FrequencyDomain.BodyAccelerationJerkMagnitude-mean                | num, fBodyAccJerkMag mean value  
FrequencyDomain.BodyAccelerationJerkMagnitude-StandardDeviation   | num, fBodyAccMag Standard Deviation value  
FrequencyDomain.BodyAccelerationJerkMagnitude-meanFrequency       | num, fBodyAccJerkMag-meanFreq  
FrequencyDomain.BodyAngularSpeedMagnitude-mean                    | num, fBodyGyroMag mean value  
FrequencyDomain.BodyAngularSpeedMagnitude-StandardDeviation       | num, fBodyGyroMag Standard Deviation value  
FrequencyDomain.BodyAngularSpeedMagnitude-meanFrequency           | num, fBodyGyroMag-meanFreq  
FrequencyDomain.BodyAngularAccelerationMagnitude-mean             | num, fBodyGyroJerkMag mean value  
FrequencyDomain.BodyAngularAccelerationMagnitude-StandardDeviation| num, fBodyGyroJerkMag Standard Deviation value 
FrequencyDomain.BodyAngularAccelerationMagnitude-meanFrequency    | num, fBodyGyroJerkMag-meanFreq  
Subject                                                           | int  subject ID, value: 1-30
Activity                                                          | chr w/ 6 levels (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
