The repository contains two files;
README.md - The current file you are reading
run_analysis.R - This process the data in the samsung data raw data collected to produce the tidy_data.txt file. The does the following sequence to product tidy data;
1. load data from features.txt, subject_test.txt, x_test.txt, y_test.txt, subject_train.txt, x_train.txt, y_train.txt,activity_labels.txt
2. combine the test and train data file
3. extract the features that are for mean and standard deviation
4. using data from step 3 filter out the mean and standard deviation from combine data in step 2
5. label filtered data
6. aggregate the filtered data by activity, subject
7. output data to file



tidy_data - The tidy data that is produce after running the R script run_analysis.R above against the samsung data. The file contains average results of an experiments six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  carried out on 30 volunteers within an age bracket of 19-48 years. Each person performed the activities  wearing a smartphone (Samsung Galaxy S II) on the waist. The data file contains the following columns;
activity - (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
subject - an id 1 - 30
variables - This includes the mean(): Mean value and std(): Standard deviation for the following values;
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
    gravityMean
    tBodyAccMean
    tBodyAccJerkMean
    tBodyGyroMean
    tBodyGyroJerkMean


