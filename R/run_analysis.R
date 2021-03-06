################################################################################
#You should create one R script called run_analysis.R that does the following.

#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
#5. From the data set in step 4, creates a second, independent tidy data set with the average of 
#   each variable for each activity and each subject.
###################################################################################################################################

#STEP   1. Merges the training and the test sets to create one data set.

# 1 A.   READING DATA

      #READ SUBJECT IDS
      #READ ACTIVITY IDS
      ## READ activity master
      ## READING features.txt has the column headers
      ##READ DATA -TEST 
      ##READ DATA -TRAIN

        source("loadFiles.R")

# 1 B.  DATA CLEANING AND RESHAPING
    #ADDING ACTIVITY DESCRIPTION
    #CREATING SUBJECT-ACTIVITY WITH ACTIVITY DESCRIPTION INSTEAD OF CODE
    #ASSIGNING FEATURE ROWS AS COLUMN HEADER TO BOTH TEST AND TRAIN DATA
    #ADDING SUBJECT & ACTIVITY DESCRIPTION TO BOTH TEST AND TRAIN DATA
    #MERGING DATA 
 
        source("reshapeCleanMerge.R")


#STEP 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# AND
#STEP 3. Uses descriptive activity names to name the activities in the data set

        source("extractMeanStd.R")


##STEP 4. Appropriately labels the data set with descriptive variable names.
## 
        source("cleanLabel.R")
        
#STEP 5: From the data set in step 4, creates a second, independent tidy data set with the average of 
#   each variable for each activity and each subject.
# further clean data variables

        source("calculateMean.R")

########## MERGE DATA FRAMES TO GIVE FINAL DATA FRAME ###################################
      final.df<-merge(meanDcast,stdDcast)
      nrow(final.df)
      #[1] 180
      ncol(final.df)
      #[1] 68
      write.table(file="analysedData.txt",row.name=FALSE, x=final.df)
