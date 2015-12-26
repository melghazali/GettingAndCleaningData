#
# Script:  run_analysis.R
# Version: 1.0
#

#
# Step 0: 
# Load raw data - it is assumed the default directory is set to "UCI HAR Dataset"
# directory created as the result of unzipping the project dataset
#
library(plyr)

train.subject = read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
train.X = read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
train.Y = read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)

test.subject = read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
test.X = read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
test.Y = read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)

activity.features = read.table("UCI HAR Dataset/features.txt", colClasses = c("character"))
activity.labels = read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("Activity.ID", "Activity"))

#
# Step 1:
# Merges the training and the test sets to create one data set.
#
train.all = cbind(cbind(train.X, train.subject), train.Y)
test.all = cbind(cbind(test.X, test.subject), test.Y)
data = rbind(train.all, test.all)

#
# Label columns
# use "head(data)" to review results and capture the indices of the last two columns
#
labels = rbind(activity.features)[,2]

names(data) = labels
names(data)[562] = "Subject"
names(data)[563] = "Activity.ID"

#
# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
#
data.mean_std <- data[,grepl("mean|std|Subject|Activity.ID", names(data))]

#
# Step 3: Uses descriptive activity names to name the activities in the data set
#
data.mean_std = join(data.mean_std, activity.labels, by = "Activity.ID", match = "first")
data.mean_std = data.mean_std[,-1]

#
# Step 4: Appropriately labels the data set with descriptive variable names. 
#
names(data.mean_std) = gsub('^t',"TimeDomain.",names(data.mean_std))
names(data.mean_std) = gsub('^f',"FrequencyDomain.",names(data.mean_std))
names(data.mean_std) = gsub('BodyBody',"Body",names(data.mean_std))
names(data.mean_std) = gsub('Acc',"Acceleration",names(data.mean_std))
names(data.mean_std) = gsub('GyroJerk',"AngularAcceleration",names(data.mean_std))
names(data.mean_std) = gsub('Gyro',"AngularSpeed",names(data.mean_std))
names(data.mean_std) = gsub('Mag',"Magnitude",names(data.mean_std))
names(data.mean_std) = gsub('meanFreq',"meanFrequency",names(data.mean_std), ignore.case = TRUE)
names(data.mean_std) = gsub('std',"StandardDeviation",names(data.mean_std))

#
# Remove pran's ()
#
names(data.mean_std) = gsub('\\(|\\)',"",names(data.mean_std), perl = TRUE)

#
# Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#
data.avg_by_subject = ddply(data.mean_std, c("Subject","Activity"), numcolwise(mean))
write.table(data.avg_by_subject, file = "HAR_AVG_by_Subject_Activities.txt", row.names = FALSE)
