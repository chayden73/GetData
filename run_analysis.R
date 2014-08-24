features <- read.table(".\\UCI HAR Dataset\\features.txt", header=FALSE)
variables <- as.vector(features[,2])
variables <- c("variable",variables)
act_labels <- read.table(".\\UCI HAR Dataset\\activity_labels.txt", header=FALSE)
subject_test <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt", header=FALSE)
x_test <- read.table(".\\UCI HAR Dataset\\test\\x_test.txt", header=FALSE)
y_test <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt", header=FALSE)
test <- cbind(subject_test,y_test,x_test)

subject_train <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt", header=FALSE)
x_train <- read.table(".\\UCI HAR Dataset\\train\\x_train.txt", header=FALSE)
y_train <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt", header=FALSE)
train <- cbind(subject_train,y_train,x_train)

compdata <-rbind(test,train)
meanstd <-na.omit(rbind(subset(features, grepl("*-mean\\(\\)*", features$V2)),subset(features, grepl("*-std\\(\\)*", features$V2))))
sel_data <- compdata[,c(1,2,as.vector(meanstd[,1])+2)]
colnames(sel_data) <- c("subject","activity",as.vector(meanstd[,2]))


sel_data2 <-merge(act_labels,sel_data,by.y="activity",by.x="V1",all.y=TRUE)
sel_data2 <-sel_data2[,-1]
colnames(sel_data2)[1] <- "activity"
tidy_data <-aggregate(sel_data2[,c(as.vector(meanstd[,2]))],by=list(sel_data2$activity,sel_data2$subject),FUN=mean,simplify=TRUE)
colnames(tidy_data)[1:2] <- c("activity","subject")
