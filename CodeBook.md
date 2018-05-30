Feature Selection 
=================
First the given data has been merged to a single dataset. The mean and stardard deviation values have been extracted,and all the observations have been grouped by Subject ID and Activities. Then the selected features have been averaged to obtain the tidy dataset.

The features selected for this dataset come from the group wise averaged values of the mean and standard deviation of accelerometer and gyroscope 3-axial raw signals timeAcc-XYZ and timeGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqBodyAcc-XYZ, freqBodyAccJerk-XYZ, freqBodyGyro-XYZ, freqBodyAccJerkMag, freqBodyGyroMag, freqBodyGyroJerkMag. (Note the 'freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAcc-XYZ
timeGravityAcc-XYZ
timeBodyAccJerk-XYZ
timeBodyGyro-XYZ
timeBodyGyroJerk-XYZ
timeBodyAccMag
timeGravityAccMag
timeBodyAccJerkMag
timeBodyGyroMag
timeBodyGyroJerkMag
freqBodyAcc-XYZ
freqBodyAccJerk-XYZ
freqBodyGyro-XYZ
freqBodyAccMag
freqBodyAccJerkMag
freqBodyGyroMag
freqBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

The complete list of variables of each feature vector:
[1] "subject_id"                         "activity_name"                     
 [3] "timeBodyAcc-mean()-X"               "timeBodyAcc-mean()-Y"              
 [5] "timeBodyAcc-mean()-Z"               "timeBodyAcc-std()-X"               
 [7] "timeBodyAcc-std()-Y"                "timeBodyAcc-std()-Z"               
 [9] "timeGravityAcc-mean()-X"            "timeGravityAcc-mean()-Y"           
[11] "timeGravityAcc-mean()-Z"            "timeGravityAcc-std()-X"            
[13] "timeGravityAcc-std()-Y"             "timeGravityAcc-std()-Z"            
[15] "timeBodyAccJerk-mean()-X"           "timeBodyAccJerk-mean()-Y"          
[17] "timeBodyAccJerk-mean()-Z"           "timeBodyAccJerk-std()-X"           
[19] "timeBodyAccJerk-std()-Y"            "timeBodyAccJerk-std()-Z"           
[21] "timeBodyGyro-mean()-X"              "timeBodyGyro-mean()-Y"             
[23] "timeBodyGyro-mean()-Z"              "timeBodyGyro-std()-X"              
[25] "timeBodyGyro-std()-Y"               "timeBodyGyro-std()-Z"              
[27] "timeBodyGyroJerk-mean()-X"          "timeBodyGyroJerk-mean()-Y"         
[29] "timeBodyGyroJerk-mean()-Z"          "timeBodyGyroJerk-std()-X"          
[31] "timeBodyGyroJerk-std()-Y"           "timeBodyGyroJerk-std()-Z"          
[33] "timeBodyAccMag-mean()"              "timeBodyAccMag-std()"              
[35] "timeGravityAccMag-mean()"           "timeGravityAccMag-std()"           
[37] "timeBodyAccJerkMag-mean()"          "timeBodyAccJerkMag-std()"          
[39] "timeBodyGyroMag-mean()"             "timeBodyGyroMag-std()"             
[41] "timeBodyGyroJerkMag-mean()"         "timeBodyGyroJerkMag-std()"         
[43] "freqBodyAcc-mean()-X"               "freqBodyAcc-mean()-Y"              
[45] "freqBodyAcc-mean()-Z"               "freqBodyAcc-stimed()-X"            
[47] "freqBodyAcc-stimed()-Y"             "freqBodyAcc-stimed()-Z"            
[49] "freqBodyAcc-meanFreq()-X"           "freqBodyAcc-meanFreq()-Y"          
[51] "freqBodyAcc-meanFreq()-Z"           "freqBodyAccJerk-mean()-X"          
[53] "freqBodyAccJerk-mean()-Y"           "freqBodyAccJerk-mean()-Z"          
[55] "freqBodyAccJerk-stimed()-X"         "freqBodyAccJerk-stimed()-Y"        
[57] "freqBodyAccJerk-stimed()-Z"         "freqBodyAccJerk-meanFreq()-X"      
[59] "freqBodyAccJerk-meanFreq()-Y"       "freqBodyAccJerk-meanFreq()-Z"      
[61] "freqBodyGyro-mean()-X"              "freqBodyGyro-mean()-Y"             
[63] "freqBodyGyro-mean()-Z"              "freqBodyGyro-stimed()-X"           
[65] "freqBodyGyro-stimed()-Y"            "freqBodyGyro-stimed()-Z"           
[67] "freqBodyGyro-meanFreq()-X"          "freqBodyGyro-meanFreq()-Y"         
[69] "freqBodyGyro-meanFreq()-Z"          "freqBodyAccMag-mean()"             
[71] "freqBodyAccMag-stimed()"            "freqBodyAccMag-meanFreq()"         
[73] "freqBodyBodyAccJerkMag-mean()"      "freqBodyBodyAccJerkMag-stimed()"   
[75] "freqBodyBodyAccJerkMag-meanFreq()"  "freqBodyBodyGyroMag-mean()"        
[77] "freqBodyBodyGyroMag-stimed()"       "freqBodyBodyGyroMag-meanFreq()"    
[79] "freqBodyBodyGyroJerkMag-mean()"     "freqBodyBodyGyroJerkMag-stimed()"  
[81] "freqBodyBodyGyroJerkMag-meanFreq()"
