dataActivityTest <- read.table( file.path("~/Rproject problem/getting and cleaning data project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test","y_test.txt")  ,header = FALSE)
dataActivitytrain <- read.table( file.path("~/Rproject problem/getting and cleaning data project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train","y_train.txt")  ,header = FALSE)

dataSubjectTest <- read.table(file.path("~/Rproject problem/getting and cleaning data project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test","subject_test.txt"),header = FALSE)
dataSubjectTrain <- read.table(file.path("~/Rproject problem/getting and cleaning data project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train","subject_train.txt"), header = FALSE)

datafeaturesTest <- read.table(file.path("~/Rproject problem/getting and cleaning data project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test","X_test.txt"), header = FALSE)
datafeaturesTrain <-read.table(file.path("~/Rproject problem/getting and cleaning data project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train","X_train.txt"), header = FALSE)
  
dataActivity <- rbind(dataActivityTest,dataActivitytrain)
datasubject <- rbind(dataSubjectTest,dataSubjectTrain)
datafeatures <- rbind(datafeaturesTest,datafeaturesTrain)

names(dataActivity)<- c("Activity")
names(datasubject)<- c("subject")
datafeaturesNames<- read.table(file.path("~/Rproject problem/getting and cleaning data project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset","features.txt"),header = FALSE)
names(datafeatures)<- datafeaturesNames$V2

tempData  <- cbind(dataActivity,datasubject)
allData <- cbind(datafeatures,tempData)
