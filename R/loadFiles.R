if (!dir.exists("Data")) dir.create("Data")

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","temp.zip", mode="wb")

unzip("temp.zip", exdir = "./Data")


#READ SUBJECT IDS
  subject_test_tbl<-read.table("Data/UCI HAR Dataset/test/subject_test.txt", header=FALSE,na.strings="NA",stringsAsFactors=FALSE)

  subject_train_tbl<-read.table("Data/UCI HAR Dataset/train/subject_train.txt", header=FALSE,na.strings="NA",stringsAsFactors=FALSE)

##change data table to data frame
  subject_test.df<-as.data.frame(subject_test_tbl)
  subject_train.df<-as.data.frame(subject_train_tbl)

#READ ACTIVITY IDS
  y_test_tbl<-read.table("Data/UCI HAR Dataset/test/y_test.txt", header=FALSE,na.strings="NA")
  y_train_tbl<-read.table("Data/UCI HAR Dataset/train/y_train.txt", header=FALSE,na.strings="NA")

##change data table to data frame
  testActID<-as.data.frame(y_test_tbl)
  colnames(testActID)=c("ACTID")
  trainActID<-as.data.frame(y_train_tbl)
  colnames(trainActID)=c("ACTID")
  
  
## READ activity master
  activity_labels<-read.table("Data/UCI HAR Dataset/activity_labels.txt", header=FALSE,na.strings="NA",stringsAsFactors=FALSE)									
  colnames(activity_labels)=c("act_id","act_desc")
  actLabels.df<-as.data.frame(activity_labels)
  
## READING features.txt has the column headers
  feature_tbl<-read.table("Data/UCI HAR Dataset/features.txt", header=FALSE,na.strings="NA",stringsAsFactors=FALSE)
  feature.df<-as.data.frame(feature_tbl)
  
##READ DATA -TEST 
  ##x_test.txt has the values
  x_test_tbl<-read.table("Data/UCI HAR Dataset/test/X_test.txt", header=FALSE,na.strings="NA",stringsAsFactors=FALSE)
  testData.df<-as.data.frame(x_test_tbl)
  dim(testData.df)
  ##[1] 2947  561
  ##READ DATA -TRAIN
  ##x_train.txt has the values
  x_train_tbl<-read.table("Data/UCI HAR Dataset/train/X_train.txt", header=FALSE,na.strings="NA",stringsAsFactors=FALSE)
  trainData.df<-as.data.frame(x_train_tbl)
  dim(trainData.df)
  #[1] 7352  561
  
  
  
  