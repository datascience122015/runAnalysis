#ADDING ACTIVITY DESCRIPTION
    testActID$new<-as.character(actLabels.df[match(testActID$ACTID,actLabels.df$act_id),2])
    trainActID$new<-as.character(actLabels.df[match(trainActID$ACTID,actLabels.df$act_id),2])
    colnames(testActID)=c("ACTID","ACTDESC")
    colnames(trainActID)=c("ACTID","ACTDESC")

#CREATING SUBJECT-ACTIVITY WITH ACTIVITY DESCRIPTION INSTEAD OF CODE
    TEST.act.subj<-cbind.data.frame(testActID[,2],subject_test.df,stringsAsFactors = FALSE)
    colnames(TEST.act.subj)<-c("ACTDESC","SUBJID")

    TRAIN.act.subj<-cbind(trainActID[,2],subject_train.df,stringsAsFactors = FALSE)
    colnames(TRAIN.act.subj)<-c("ACTDESC","SUBJID")
    
## cleaning up data FEATURE TABLE- substituting "BodyBody" by just "Body"
    c<-grep("BodyBody", feature.df[,2])
    for (i in c) feature.df[i,2]=paste0(substr(feature.df[i,2],1,1),substring(feature.df[i,2],6))
    col_list<-c(as.character(feature.df$V2))
# ASSIGNING FEATURE ROWS AS COLUMN HEADER BEFORE CLEANING THE VARIABLES
    colnames(testData.df) = col_list
    colnames(trainData.df)=col_list
#ADDING SUBJECT & ACTIVITY DESCRIPTION
    TEST_DATA<-cbind(TEST.act.subj,testData.df,stringsAsFactors = FALSE)
    TRAIN_DATA<-cbind(TRAIN.act.subj,trainData.df,stringsAsFactors = FALSE)
#MERGING DATA
    MERGED_DATA<-rbind(TEST_DATA,TRAIN_DATA)
    str(MERGED_DATA)
    #10299 obs. of  563 variables
    
