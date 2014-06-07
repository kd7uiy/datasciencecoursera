#The full path can be specified here. The data is at a higher path, so...
path<- 'UCI HAR Dataset\\'

#This is the complete list of files that should be loaded. Inertial signals are commented as not required
test_files<-c('x_test.txt')
#               ,'Inertial Signals\\body_acc_x_test.txt'
#               ,'Inertial Signals\\body_acc_y_test.txt'
#               ,'Inertial Signals\\body_acc_z_test.txt'
#               ,'Inertial Signals\\body_gyro_x_test.txt'
#               ,'Inertial Signals\\body_gyro_y_test.txt'
#               ,'Inertial Signals\\body_gyro_z_test.txt'
#               ,'Inertial Signals\\total_acc_x_test.txt'
#               ,'Inertial Signals\\total_acc_y_test.txt'
#               ,'Inertial Signals\\total_acc_z_test.txt')

#This is the training files, in the same order as the test files. Note: Inertial signals not required, so they are commented out.
train_files<-c('x_train.txt')
#               ,'Inertial Signals\\body_acc_x_train.txt'
#               ,'Inertial Signals\\body_acc_y_train.txt'
#               ,'Inertial Signals\\body_acc_z_train.txt'
#               ,'Inertial Signals\\body_gyro_x_train.txt'
#               ,'Inertial Signals\\body_gyro_y_train.txt'
#               ,'Inertial Signals\\body_gyro_z_train.txt'
#               ,'Inertial Signals\\total_acc_x_train.txt'
#               ,'Inertial Signals\\total_acc_y_train.txt'
#               ,'Inertial Signals\\total_acc_z_train.txt')

# This will determine which columns to use.
containsStdMean<- function(data) {
  ret='NULL'
  if (grepl("(std|mean)",data)) {
    ret=NA
  }
  ret
}

#This function will merge data sets together. It'll be applied to all things easily.
merge_sets<-function(test_path,
                     train_path,
                     headers=NA,
                     colClasses=NA,
                     subjectTest=NA,
                     subjectTrain=NA,
                     activityTest=NA,
                     activityTrain=NA) {
  # Loads in the data
  train<-read.csv(paste(path,'train\\',train_path,sep=''),sep='',col.names=headers,colClasses=colClasses)
  test<-read.csv(paste(path,'test\\',test_path,sep=''),sep='',col.names=headers,colClasses=colClasses)

  #Convines the data into a single entity
  train=cbind(subjectTrain,activityTrain,train)
  test=cbind(subjectTest,activityTest,test)

  # Returns the row combined data
  return(rbind(train,test))
}

#Read in the header values
headers<-read.csv(paste(path,'features.txt',sep=''),header=FALSE,sep=' ',colClasses=c('NULL',NA))

#List of headers to use
headersColumnType<-sapply(headers[[1]],containsStdMean)
filteredHeaders<-subset(headers,is.na(headersColumnType))[[1]]

#Reads in activity labels
activities<-read.csv(paste(path,'activity_labels.txt',sep='')
                     ,header=FALSE,sep=' '
                     ,colClasses=c('NULL',NA))

#This reads in the test subject number
subj_train<-read.csv(paste(path,'train\\','subject_train.txt',sep=''),col.names=c('Subject ID'))
subj_test<-read.csv(paste(path,'test\\','subject_test.txt',sep=''),col.names=c('Subject ID'))

#This shows the action they performed
act_train<-read.csv(paste(path,'train\\','y_train.txt',sep=''))
act_test<-read.csv(paste(path,'test\\','y_test.txt',sep=''))

#Converts the action to the text label
actTrainFinal<-data.frame(Activity=as.factor(activities[[1]])[as.numeric(act_train[[1]])])
actTestFinal<-data.frame(Activity=as.factor(activities[[1]])[as.numeric(act_test[[1]])])

#Loops through test case data (There's only one test case, but could be modified to do more)
for (index in 1:length(test_files)) {
  data<-merge_sets(test_files[index],
                   train_files[index],
                   headers[[1]],
                   headersColumnType,
                   subjectTrain=subj_train,
                   subjectTest=subj_test,
                   activityTrain=actTrainFinal,
                   activityTest=actTestFinal)
  data<-data[with(data,order(Subject.ID,Activity)),]
  #Writes the data for submission
  write.table(data,paste("full_output",index,".txt",sep=''))
  
  #Now needs to sumarize the data.
  #First split the data
  splitData<-split(data,list(data$Subject.ID,data$Activity))
  out<-NA
  index=1
  for (set in splitData) {
    temp<-data.frame(sapply(set,mean))
    temp$Activity=set$Activity[[1]]
#    index<-index+1
    if (is.na(out)) {
      out<-temp
    } else {
      out<-rbind(out,temp)
    }
  }
  write.table(out,paste("summary_output",index,".txt",sep=''))
}

