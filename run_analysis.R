# load libraries
library(plyr)

# (0) load data
# load test data set
X_test <- read.table("./UCI_HAR_Dataset/test/X_test.txt")
y_test <- read.table("./UCI_HAR_Dataset/test/y_test.txt", col.names=c("y"))
subject_test <- read.table("./UCI_HAR_Dataset/test/subject_test.txt", col.names=c("subject"))
# join measurements and activity type in one data set
test <- cbind(X_test, y_test, subject_test)

# load training data set
X_train <- read.table("./UCI_HAR_Dataset/train/X_train.txt")
y_train <- read.table("./UCI_HAR_Dataset/train/y_train.txt", col.names=c("y"))
subject_train <- read.table("./UCI_HAR_Dataset/train/subject_train.txt", col.names=c("subject"))
# join measurements, activity type and subject in one data set
train <- cbind(X_train, y_train, subject_train)


# (1) merge the training and the test sets to create one data set 
d <- rbind(test, train)


# (3) use descriptive activity names to name the activities in the data set and
# (4) appropriately label the data set with descriptive activity names
activity_labels <- read.table("./UCI_HAR_Dataset/activity_labels.txt", col.names=c("id", "label"))
d$y = factor(d$y, levels=activity_labels$id, labels=activity_labels$label)


# (2) extract only the measurements on the mean and standard deviation for each measurement
data <- data.frame(
  subject=d$subject, activity_type=d$y, 
  tBodyAcc_mean_X=d$V1, tBodyAcc_mean_Y=d$V2, tBodyAcc_mean_Z=d$V3,
  tBodyAcc_std_X=d$V4, tBodyAcc_std_Y=d$V5, tBodyAcc_std_Z=d$V6,
  tGravityAcc_mean_X=d$V41, tGravityAcc_mean_Y=d$V42, tGravityAcc_mean_Z=d$V43,
  tGravityAcc_std_X=d$V44, tGravityAcc_std_Y=d$V45, tGravityAcc_std_Z=d$V46,
  tBodyAccJerk_mean_X=d$V81, tBodyAccJerk_mean_Y=d$V82, tBodyAccJerk_mean_Z=d$V83,
  tBodyAccJerk_std_X=d$V84, tBodyAccJerk_std_Y=d$V85, tBodyAccJerk_std_Z=d$V86,
  tBodyGyro_mean_X=d$V121, tBodyGyro_mean_Y=d$V122, tBodyGyro_mean_Z=d$V123,
  tBodyGyro_std_X=d$V124, tBodyGyro_std_Y=d$V125, tBodyGyro_std_Z=d$V126,
  tBodyGyroJerk_mean_X=d$V161, tBodyGyroJerk_mean_Y=d$V162, tBodyGyroJerk_mean_Z=d$V163,
  tBodyGyroJerk_std_X=d$V164, tBodyGyroJerk_std_Y=d$V165, tBodyGyroJerk_std_Z=d$V166,
  tBodyAccMag_mean=d$V201, tBodyAccMag_std=d$V202, tGravityAccMag_mean=d$V214, tGravityAccMag_std=d$V215,
  tBodyAccJerkMag_mean=d$V227, tBodyAccJerkMag_std=d$V228, tBodyGyroMag_mean=d$V240, tBodyGyroMag_std=d$V241,
  tBodyGyroJerkMag_mean=d$V253, tBodyGyroJerkMag_std=d$V254,
  fBodyAcc_mean_X=d$V266, fBodyAcc_mean_Y=d$V267, fBodyAcc_mean_Z=d$V268,
  fBodyAcc_std_X=d$V269, fBodyAcc_std_Y=d$V270, fBodyAcc_std_Z=d$V271,
  fBodyAccJerk_mean_X=d$V345, fBodyAccJerk_mean_Y=d$V346, fBodyAccJerk_mean_Z=d$V347,
  fBodyAccJerk_std_X=d$V348, fBodyAccJerk_std_Y=d$V349, fBodyAccJerk_std_Z=d$V350,
  fBodyGyro_mean_X=d$V424, fBodyGyro_mean_Y=d$V425, fBodyGyro_mean_Z=d$V426,
  fBodyGyro_std_X=d$V427, fBodyGyro_std_Y=d$V428, fBodyGyro_std_Z=d$V429,
  fBodyAccMag_mean=d$V503, fBodyAccMag_std=d$V504, fBodyBodyAccJerkMag_mean=d$V516, fBodyBodyAccJerkMag_std=d$V517,
  fBodyBodyGyroMag_mean=d$V529, fBodyBodyGyroMag_std=d$V530, fBodyBodyGyroJerkMag_mean=d$V542, fBodyBodyGyroJerkMag_std=d$V543)


# (5) create a second, independent tidy data set with the average of each variable for each activity and each subject
tidy <- ddply(
  data,.(activity_type, subject),summarize,
  tBodyAcc_mean_X=mean(tBodyAcc_mean_X), tBodyAcc_mean_Y=mean(tBodyAcc_mean_Y), tBodyAcc_mean_Z=mean(tBodyAcc_mean_Z),
  tBodyAcc_std_X=mean(tBodyAcc_std_X), tBodyAcc_std_Y=mean(tBodyAcc_std_Y), tBodyAcc_std_Z=mean(tBodyAcc_std_Z),
  tGravityAcc_mean_X=mean(tGravityAcc_mean_X), tGravityAcc_mean_Y=mean(tGravityAcc_mean_Y), tGravityAcc_mean_Z=mean(tGravityAcc_mean_Z),
  tGravityAcc_std_X=mean(tGravityAcc_std_X), tGravityAcc_std_Y=mean(tGravityAcc_std_Y), tGravityAcc_std_Z=mean(tGravityAcc_std_Z),
  tBodyAccJerk_mean_X=mean(tBodyAccJerk_mean_X), tBodyAccJerk_mean_Y=mean(tBodyAccJerk_mean_Y), tBodyAccJerk_mean_Z=mean(tBodyAccJerk_mean_Z),
  tBodyAccJerk_std_X=mean(tBodyAccJerk_std_X), tBodyAccJerk_std_Y=mean(tBodyAccJerk_std_Y), tBodyAccJerk_std_Z=mean(tBodyAccJerk_std_Z),
  tBodyGyro_mean_X=mean(tBodyGyro_mean_X), tBodyGyro_mean_Y=mean(tBodyGyro_mean_Y), tBodyGyro_mean_Z=mean(tBodyGyro_mean_Z),
  tBodyGyro_std_X=mean(tBodyGyro_std_X), tBodyGyro_std_Y=mean(tBodyGyro_std_Y), tBodyGyro_std_Z=mean(tBodyGyro_std_Z),
  tBodyGyroJerk_mean_X=mean(tBodyGyroJerk_mean_X), tBodyGyroJerk_mean_Y=mean(tBodyGyroJerk_mean_Y), tBodyGyroJerk_mean_Z=mean(tBodyGyroJerk_mean_Z),
  tBodyGyroJerk_std_X=mean(tBodyGyroJerk_std_X), tBodyGyroJerk_std_Y=mean(tBodyGyroJerk_std_Y), tBodyGyroJerk_std_Z=mean(tBodyGyroJerk_std_Z),
  tBodyAccMag_mean=mean(tBodyAccMag_mean), tBodyAccMag_std=mean(tBodyAccMag_std), 
  tGravityAccMag_mean=mean(tGravityAccMag_mean), tGravityAccMag_std=mean(tGravityAccMag_std),
  tBodyAccJerkMag_mean=mean(tBodyAccJerkMag_mean), tBodyAccJerkMag_std=mean(tBodyAccJerkMag_std), 
  tBodyGyroMag_mean=mean(tBodyGyroMag_mean), tBodyGyroMag_std=mean(tBodyGyroMag_std),
  tBodyGyroJerkMag_mean=mean(tBodyGyroJerkMag_mean), tBodyGyroJerkMag_std=mean(tBodyGyroJerkMag_std),
  fBodyAcc_mean_X=mean(fBodyAcc_mean_X), fBodyAcc_mean_Y=mean(fBodyAcc_mean_Y), fBodyAcc_mean_Z=mean(fBodyAcc_mean_Z),
  fBodyAcc_std_X=mean(fBodyAcc_std_X), fBodyAcc_std_Y=mean(fBodyAcc_std_Y), fBodyAcc_std_Z=mean(fBodyAcc_std_Z),
  fBodyAccJerk_mean_X=mean(fBodyAccJerk_mean_X), fBodyAccJerk_mean_Y=mean(fBodyAccJerk_mean_Y), fBodyAccJerk_mean_Z=mean(fBodyAccJerk_mean_Z),
  fBodyAccJerk_std_X=mean(fBodyAccJerk_std_X), fBodyAccJerk_std_Y=mean(fBodyAccJerk_std_Y), fBodyAccJerk_std_Z=mean(fBodyAccJerk_std_Z),
  fBodyGyro_mean_X=mean(fBodyGyro_mean_X), fBodyGyro_mean_Y=mean(fBodyGyro_mean_Y), fBodyGyro_mean_Z=mean(fBodyGyro_mean_Z),
  fBodyGyro_std_X=mean(fBodyGyro_std_X), fBodyGyro_std_Y=mean(fBodyGyro_std_Y), fBodyGyro_std_Z=mean(fBodyGyro_std_Z),
  fBodyAccMag_mean=mean(fBodyAccMag_mean), fBodyAccMag_std=mean(fBodyAccMag_std), 
  fBodyBodyAccJerkMag_mean=mean(fBodyBodyAccJerkMag_mean), fBodyBodyAccJerkMag_std=mean(fBodyBodyAccJerkMag_std),
  fBodyBodyGyroMag_mean=mean(fBodyBodyGyroMag_mean), fBodyBodyGyroMag_std=mean(fBodyBodyGyroMag_std), 
  fBodyBodyGyroJerkMag_mean=mean(fBodyBodyGyroJerkMag_mean), fBodyBodyGyroJerkMag_std=mean(fBodyBodyGyroJerkMag_std))
write.csv(tidy, file="tidy.csv")