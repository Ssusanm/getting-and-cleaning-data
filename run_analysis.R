#SSM: Script to create a tidy data set for " data collected from the accelerometers from the Samsung Galaxy S smartphone. "
#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names
#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#setting the working directory
maindir <- "C:/Users/ssusa_000/DataScience/assignments/R/UCI HAR Dataset"
setwd(maindir)

#loading information files
features <- read.table("features.txt", colClasses = c("character"))
activity_labels <- read.table("activity_labels.txt",col.names=c("label","activity"))

#Step 1: loading Data files
#        training files
x_train <- read.table(paste(maindir,"/train/x_train.txt",sep=""))
y_train <-read.table(paste(maindir,"/train/y_train.txt",sep=""))
subject_train <- read.table(paste(maindir,"/train/subject_train.txt",sep=""))
#        test files
x_test <- read.table(paste(maindir,"/test/x_test.txt",sep=""))
y_test <- read.table(paste(maindir,"/test/y_test.txt",sep=""))
subject_test <- read.table(paste(maindir,"/test/subject_test.txt",sep=""))

#Step 2: Merge training and test datasets
training_data <- cbind(x_train,subject_train,y_train) # Creating one dataset for training data
test_data <- cbind(x_test,subject_test,y_test) # creating one dataset for test data
#merged_data_1 <- merge(training_data,test_data,all=TRUE) - using the rbind as system giving some error
#because of by variable - here no variable to join by
merged_data <- rbind(training_data,test_data) # merging training and test data together

#Step 3: Label the columns
#since features has names only for 561 cols, naming 562 as Label and 563 as Subject
new_cols <- rbind(rbind(features,c(562,"subject")),c(563,"label"))[,2]
names(merged_data) <- new_cols

#note to self: to see the first 2 rows in dataset, use head(merged_data,2)

#subset to get only mean and std for a subject and label: use the column names containing words mean
#and std to subset.
mean_std <- merged_data[,grepl("mean|std|subject|label",names(merged_data))]


