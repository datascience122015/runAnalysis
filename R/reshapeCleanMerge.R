#ADDING ACTIVITY DESCRIPTION
    testActID$new<-as.character(actLabels.df[match(testActID$ACTID,actLabels.df$act_id),2])
    trainActID$new<-as.character(actLabels.df[match(trainActID$ACTID,actLabels.df$act_id),2])
    colnames(testActID)=c("ACTID","ACTDESC")
    colnames(trainActID)=c("ACTID","ACTDESC")

#CREATING SUBJECT-ACTIVITY WITH ACTIVITY DESCRIPTION INSTEAD OF CODE
    TEST.subj.act<-cbind.data.frame(subject_test.df,testActID[,2],stringsAsFactors = FALSE)
    colnames(TEST.subj.act)<-c("SUBJID","ACTDESC")

    TRAIN.subj.act<-cbind(subject_train.df,trainActID[,2],stringsAsFactors = FALSE)
    colnames(TRAIN.subj.act)<-c("SUBJID","ACTDESC")
    
## cleaning up data FEATURE TABLE- substituting "BodyBody" by just "Body"
    c<-grep("BodyBody", feature.df[,2])
    for (i in c) feature.df[i,2]=paste0(substr(feature.df[i,2],1,1),substring(feature.df[i,2],6))
    col_list<-c(as.character(feature.df$V2))
# ASSIGNING FEATURE ROWS AS COLUMN HEADER BEFORE CLEANING THE VARIABLES
    colnames(testData.df) = col_list
    colnames(trainData.df)=col_list
#ADDING SUBJECT & ACTIVITY DESCRIPTION
    TEST_DATA<-cbind(TEST.subj.act,testData.df,stringsAsFactors = FALSE)
    TRAIN_DATA<-cbind(TRAIN.subj.act,trainData.df,stringsAsFactors = FALSE)
#MERGING DATA
    MERGED_DATA<-rbind(TEST_DATA,TRAIN_DATA)
    str(MERGED_DATA)
    #10299 obs. of  563 variables
    