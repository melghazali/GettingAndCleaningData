## Script:  run_analysis.R (V1.0)

Note 1: It is easier to fork the github repo, then source "run_analysis.R"

https://github.com/melghazali/GettingAndCleaningData.git

Otherwise, follow the following steps to generate the tidy data file.

### Getting the raw data and run_analysis.R
* Download the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
   to local directory (e.g, C:\project)
* Unzip the file into C:\project which yield:
   C:\project\getdata-projectfiles-UCI HAR Dataset\UCI HAR Dataset
* Move the dataset "UCI HAR Dataset" directory to D:\project
* Download run_analysis.R to C:\project
* Start RStudio and set the working directory to C:\project
* Source run_analysis.R
* The tidy text file will be written to C:\project\HAR_AVG_by_Subject_Activities.txt

### Step-by-step inside "run_analysis.R
library(plyr)

### Step 0: Load each data file into a data frame object
* train.subject = read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
* train.X = read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
* train.Y = read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
* test.subject = read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
* test.X = read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
* test.Y = read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
* activity.features = read.table("UCI HAR Dataset/features.txt", colClasses = c("character"))

Note 2: While loading the activities labels, add column names

* activity.labels = read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("Activity.ID", "Activity"))

### Step 1: Merge the training and the test sets to create short form data set.
* train.all = cbind(cbind(train.X, train.subject), train.Y)
* test.all = cbind(cbind(test.X, test.subject), test.Y)
* data = rbind(train.all, test.all)

Note 3: dim(data) should display "[1] 10299   563"

Note 4: Use "head(data)" to review results and capture the indices of the last two columns, then add labels

* labels = rbind(activity.features)[,2]
* names(data) = labels
* names(data)[562] = "Subject"
* names(data)[563] = "Activity.ID"

### Step 2: Extracts only the measurements on the mean and standard deviation for each measurement per subject & activity
* data.mean_std <- data[,grepl("mean|std|Subject|Activity.ID", names(data))]

### Step 3: Use descriptive activity names to name the activities in the data set. First, joint the data with the activity labels and  delete the last column created by join operation
* data.mean_std = join(data.mean_std, activity.labels, by = "Activity.ID", match = "first")
* data.mean_std = data.mean_std[,-1]

Note 5: Remove pran's () and make valid names
* names(data.mean_std) = gsub('\\(|\\)',"",names(data.mean_std), perl = TRUE)
* names(data.mean_std) = make.names(names(data.mean_std))


### Step 4: Appropriately labels the data set with descriptive variable names. 
* names(data.mean_std) = gsub('^t',"TimeDomain.",names(data.mean_std))
* names(data.mean_std) = gsub('^f',"FrequencyDomain.",names(data.mean_std))
* names(data.mean_std) = gsub('BodyBody',"Body",names(data.mean_std))
* names(data.mean_std) = gsub('Acc',"Acceleration",names(data.mean_std))
* names(data.mean_std) = gsub('GyroJerk',"AngularAcceleration",names(data.mean_std))
* names(data.mean_std) = gsub('Gyro',"AngularSpeed",names(data.mean_std))
* names(data.mean_std) = gsub('Mag',"Magnitude",names(data.mean_std))
* names(data.mean_std) = gsub('meanFreq',"meanFrequency",names(data.mean_std), ignore.case = TRUE)
* names(data.mean_std) = gsub('std',"StandardDeviation",names(data.mean_std))

### Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* data.avg_by_subject = ddply(data.mean_std, c("Subject","Activity"), numcolwise(mean))

### Write the tidy data to text file without the default row names
* write.table(data.avg_by_subject, file = "HAR_AVG_by_Subject_Activities.txt", row.names = FALSE)
