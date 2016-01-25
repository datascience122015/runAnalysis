##STEP 4. Appropriately labels the data set with descriptive variable names.
## 
col_list<-gsub("^t","time",col_list)
col_list<-gsub("^f","frequency",col_list)
col_list<-gsub("Gyro","Gyroscope",col_list)
col_list<-gsub("Acc","Accelerometer",col_list)
col_list<-gsub("-X","Xaxis",col_list)
col_list<-gsub("-Y","Yaxis",col_list)
col_list<-gsub("-Z","Zaxis",col_list)
col_list<-gsub("mean","Mean",col_list)
col_list<-gsub("Mag","Magnitude",col_list)
col_list<-gsub("std","Std",col_list)
col_list<-gsub("-","",col_list)
colnames(testData.df) = col_list
colnames(trainData.df)=col_list
colnames(MERGED_DATA[,3:563])=col_list

col_list<-names(req_data_std)
col_list<-gsub("^t","time",col_list)
col_list<-gsub("^f","frequency",col_list)
col_list<-gsub("Gyro","Gyroscope",col_list)
col_list<-gsub("Acc","Accelerometer",col_list)
col_list<-gsub("-X","Xaxis",col_list)
col_list<-gsub("-Y","Yaxis",col_list)
col_list<-gsub("-Z","Zaxis",col_list)
col_list<-gsub("mean","Mean",col_list)
col_list<-gsub("Mag","Magnitude",col_list)
col_list<-gsub("std","Std",col_list)
col_list<-gsub("-","",col_list)
colnames(req_data_std) = col_list

col_list<-names(req_data_mean)
col_list<-gsub("^t","time",col_list)
col_list<-gsub("^f","frequency",col_list)
col_list<-gsub("Gyro","Gyroscope",col_list)
col_list<-gsub("Acc","Accelerometer",col_list)
col_list<-gsub("-X","Xaxis",col_list)
col_list<-gsub("-Y","Yaxis",col_list)
col_list<-gsub("-Z","Zaxis",col_list)
col_list<-gsub("mean","Mean",col_list)
col_list<-gsub("Mag","Magnitude",col_list)
col_list<-gsub("std","Std",col_list)
col_list<-gsub("-","",col_list)
colnames(req_data_mean) = col_list
