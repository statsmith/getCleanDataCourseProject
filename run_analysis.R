# Getting and Cleaning Data Course Project

# Downloaded Data With Point and Click on 2014 05 16 From Link on 
# Class Project Website https://class.coursera.org/getdata-003/human_grading/view/courses/972136/assessments/3/submissions
# Saved to C:\Users\HFDSS103\Documents\Coursera\Data Science Certification\Getting.and.Cleaning.Data\UCI HAR Dataset

setwd("C:\\Users\\HFDSS103\\Documents\\Coursera\\Data Science Certification\\Getting.and.Cleaning.Data\\UCI HAR Dataset")


#1 Merge the Training and Test Sets to Create One Data Set
xTest<-read.table("test\\X_test.txt")
yTest<-read.table("test\\y_test.txt")
xTrain<-read.table("train\\X_train.txt")
yTrain<-read.table("train\\y_train.txt")
subjectTrain<-read.table("train\\subject_train.txt")
subjectTest<-read.table("test\\subject_test.txt")

df<-cbind(rbind(subjectTrain,subjectTest),rbind(yTrain,yTest),rbind(xTrain,xTest))

        # Set Column Names
        features<-read.table("features.txt")
        names(df)<-c("subject","activity",as.character(features[,2]))


#2 Extract Only Measurements on Means and Standard Deviations for Each Measurement - Keeping Subject and Activity Columns
dfMeansStd<-cbind(df[,1:2],df[,grep("mean[^F]|std",names(df),value=TRUE)])

#3 Apply Descriptive Activity Names to Activities in Data Set
dfMeansStd[["activity"]]<-factor(dfMeansStd[["activity"]],levels=c(1,2,3,4,5,6),labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))

#5 Calculate Averages for Each Subject, For Each Activity, For Each Variable
dfTidy<-aggregate( .  ~ subject + activity, data=dfMeansStd, mean)

#4 Modify to Human Readable and Maching Readable Names
names(dfTidy)<-sub("^t","time",names(dfTidy))
names(dfTidy)<-sub("^f","frequency",names(dfTidy))
names(dfTidy)<-sub("Acc","Accelerometer",names(dfTidy))
names(dfTidy)<-sub("Gyro","Gyroscope",names(dfTidy))
names(dfTidy)<-sub("-mean","Mean",names(dfTidy))
names(dfTidy)<-sub("-std","Std",names(dfTidy))
names(dfTidy)<-sub("Mag","Magnitude",names(dfTidy))
names(dfTidy)<-sub("\\()","",names(dfTidy))
names(dfTidy)<-sub("\\-","",names(dfTidy))
names(dfTidy)<-sub("(Body)\\1","Body",names(dfTidy))

# Save Tidy Data Set to CSV
write.table(dfTidy, "tidyData.txt",row.names=FALSE)





