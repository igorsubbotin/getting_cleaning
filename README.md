* load plyr library which is needed for this script
* load data
 * load test data set
   * load measurement from "./UCI_HAR_Dataset/test/X_test.txt" using read.table function
    * load activities from "./UCI_HAR_Dataset/test/y_test.txt" using read.table function and assign column name
    * load subjects from "./UCI_HAR_Dataset/test/subject_test.txt" using read.table function and assign column name
    * join data in one test data set using cbind function

 * load training data set
   * load measurement from "./UCI_HAR_Dataset/train/X_tarin.txt" using read.table function
    * load activities from "./UCI_HAR_Dataset/train/y_tarin.txt" using read.table function and assign column name
    * load subjects from "./UCI_HAR_Dataset/train/subject_train.txt" using read.table function and assign column name
    * join data in one training data set using cbind function
# merge the training and the test sets to create one data set using rbind
# use descriptive activity names to name the activities in the data set and appropriately label the data set with descriptive activity names
## read labels from "./UCI_HAR_Dataset/activity_labels.txt" using read.table function and then factorize activity column in merged data set using function factor
# extract only the measurements on the mean and standard deviation for each measurement
# create a second, independent tidy data set with the average of each variable for each activity and each subject using ddply function from "plyr" library and grouping by activity_type and subject columns
# write tidy data set to "tidy.csv" using write.csv function
