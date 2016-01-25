###################################################################################################################################
#STEP 2. Extracts only the measurements on the mean and standard deviation for each measurement.[avoiding meanFreq]

req_columns_means<-grep("mean\\(\\)" ,names(MERGED_DATA))
length(req_columns_means)
#[1] 33
req_columns_stds<-grep("std\\(\\)" ,names(MERGED_DATA))
length(req_columns_stds)
#[1] 33

req_data_mean<-subset(MERGED_DATA,select=req_columns_means)
nrow(req_data_mean)
#[1] 10299
ncol(req_data_mean)
#[1] 33
req_data_std<-subset(MERGED_DATA,select=req_columns_stds)
nrow(req_data_std)
#[1] 10299
ncol(req_data_std)
#[1] 33
req_data<-cbind(req_data_mean,req_data_std)
nrow(req_data)
#[1] 10299
ncol(req_data)
#[1] 66

###################################################################################################################################    
#STEP 3. Uses descriptive activity names to name the activities in the data set
#### adding subj and act desc
req_data_mean<-cbind(MERGED_DATA[,1:2],req_data_mean,stringsAsFactors = FALSE)
ncol(req_data_mean)
#[1] 35
nrow(req_data_mean)
#[1] 10299
req_data_std<-cbind(MERGED_DATA[,1:2],req_data_std,stringsAsFactors = FALSE)
nrow(req_data_std)
#[1] 10299
ncol(req_data_std)
#[1] 35
req_data<-cbind(MERGED_DATA[,1:2],req_data,stringsAsFactors = FALSE)
nrow(req_data)
#[1] 10299
ncol(req_data)
#[1] 68
###################################################################################################################################  