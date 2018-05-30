##download the required files using download.file function
##load the data into R 
X_test <- read.table("../test/X_test.txt")
Y_test <- read.table("../test/Y_test.txt")
Sub_test <- read.table("../test/subject_test.txt")
X_train <- read.table("./train/X_train.txt")
Y_train <- read.table("./train/Y_train.txt")
Sub_train <- read.table("./train/subject_train.txt")
names <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

##merging the data into one dataset. First merging all the data of test and train separately.
##Then merging test and train sets
merged_test <- cbind(Sub_test,Y_test,X_test)
merged_train <- cbind(Sub_train,Y_train,X_train)
merged_data <- rbind(merged_test,merged_train)

##Getting the column numbers with mean() and std() values from variable names set.
mean_std_num <- grep("mean()|std()",names$V2)
##Since two columns have been added during merging, we add 2 to all the column numbers from above
mean_std_num <- sapply(mean_std_num, function(x){x+2})
##Including the first and second columns in the list since they are subject ID and Activities.
mean_std_num <- c(1,2,mean_std_num)

##Extracting the required columns
selected_data <- merged_data[,mean_std_names]

##Mapping all the activity numbers with the activity names
selected_data$V1.1 <- activity_labels[ match(selected_data$V1.1, activity_labels$V1) , 'V2']

##Getting the names of the selected columns from variable names set
mean_std_names <- grep("mean()|std()",names$V2,value = TRUE)

##Changing the variable names to a more descriptive names
mean_std_names <- sub("f","freq",mean_std_names)
mean_std_names <- sub("t","time",mean_std_names)

##Adding the variable names of the first two columns to the set
mean_std_names <- c("subject_id","activity_name",mean_std_names)

##Updating the column names of selected dataset
colnames(selected_data) <- mean_std_names

##Tidying the data set into a final data set
final_data <- final_data %>% summarise_all(funs(mean))