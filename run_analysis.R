
#######################################################################################
### (A) SETS FILE DIRECTORIES & READS IN RAW DATA
#######################################################################################

dir_test="C:/Users/Gregg/Documents/Stat/Data Cleaning/Project/test"
dir_train="C:/Users/Gregg/Documents/Stat/Data Cleaning/Project/train"
dir_main="C:/Users/Gregg/Documents/Stat/Data Cleaning/Project/out"
setwd(dir_main)

s_test <- read.table(paste(dir_test,"subject_test.txt",sep="/"),col.names=c("Subject"))
y_test <- read.table(paste(dir_test,"Y_test.txt",sep="/"),col.names=c("ActivityCode"))
x_test <- read.table(paste(dir_test,"X_test.txt",sep="/"))

s_train <-read.table(paste(dir_train,"subject_train.txt",sep="/"),col.names=c("Subject"))
y_train <-read.table(paste(dir_train,"Y_train.txt",sep="/"),col.names=c("ActivityCode"))
x_train <-read.table(paste(dir_train,"X_train.txt",sep="/"))

activity_labels <- read.table(paste(dir_main,"activity_labels.txt",sep="/"),header=T)
variable_details  <- read.table(paste(dir_main,"variable_details.txt",sep="/"),header=T)

#######################################################################################
### (B) STEP 1 - CREATES SINGLE DATA SET OF TESTING/TRAINING SUBJECTS & ACTIVITIES
#######################################################################################

test=cbind(s_test,y_test,x_test)
train=cbind(s_train,y_train,x_train)
fulldata=rbind(test,train)

#######################################################################################
### (C) INTERMEDIATE STEP: TRANSPOSES 561 COLUMN VARIABLES INTO ROW VALUES BY: 
###     SUBJECT & ACTIVITY CODE
#######################################################################################

transp1=NULL

for(i in 1:561){
  transp0=cbind(fulldata[,1:2],Value=fulldata[,2+i],Variable0=paste("V",i,sep=""))
  transp1=rbind(transp1,transp0)
}

#######################################################################################
### (D) STEP 4 - Appropriately labels the data set with descriptive variable names
#######################################################################################

transp2 = transp1
transp2$id = 1:nrow(transp2)
transp3 = merge(transp2, variable_details, by = "Variable0",sort=F,all.x=T)
transp4 = transp3[order(transp3$id),] 
head(transp4)

#######################################################################################
### (E) STEP 2 - Extracts only the measurements on the mean and standard deviation
#######################################################################################

tidydata1 <- subset(transp4, Type=="mean" | Type=="std", select=c(Subject,ActivityCode,Variable,Value))
head(tidydata1)
# drops two variables that are no longer needed:
# Type (mean, min, max, etc.), Variable0 (v1 - V561) 

#######################################################################################
### (F) STEP 3 - Uses descriptive activity names to name activities
#######################################################################################

tidydata1$id <-  1:nrow(tidydata1)
merge1 = merge(tidydata1, activity_labels, by = "ActivityCode", sort=F)
merge2 = merge1[order(tidydata1$id),] 

#######################################################################################
### (G) STEP 5 - Create a second, independent tidy data set with the average
###              of each variable for each activity and subject
#######################################################################################

tidydata <-aggregate(merge2$Value, by=list(merge2$Subject,merge2$Activity,merge2$Variable),FUN=mean, na.rm=TRUE)
colnames(tidydata) = c("Subject","Activity","Variable","MeanValue")

write.table(tidydata, "tidydata.txt", sep="\t",row.name=F,quote=F) 




