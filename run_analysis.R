# CHANGE YOUR WORKING DIRECTORY HERE
# REPLACE "~/Pessoal/Coursera/getting_and_cleaning_data/" FORYOUR WD
setwd("~/Pessoal/Coursera/getting_and_cleaning_data/")

# Read Train and Test csv files
training = read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
training[,562] = read.csv("UCI HAR Dataset/train/Y_train.txt", sep="", header=FALSE)
training[,563] = read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)

testing = read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
testing[,562] = read.csv("UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE)
testing[,563] = read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)

activityLabels = read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)

# Rename features
features = read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)
features[,2] = gsub('-mean', 'Mean', features[,2])
features[,2] = gsub('-std', 'Standart', features[,2])
features[,2] = gsub('[-()]', '', features[,2])

# Merge sets of data
allData = rbind(training, testing)

# Get only the Mean and Std Data
colsWeWant <- grep(".*Mean.*|.*Standart.*", features[,2])

# Reducing Features table to Mean and Standart Data
features <- features[colsWeWant,]

# Adding Subject and Activity
colsWeWant <- c(colsWeWant, 562, 563)

# Removing unwanted data
allData <- allData[,colsWeWant]

# Add the column names (features) to allData
colnames(allData) <- c(features$V2, "Activity", "Subject")
colnames(allData) <- tolower(colnames(allData))

currentActivity = 1
for (currentActivityLabel in activityLabels$V2) {
  allData$activity <- gsub(currentActivity, currentActivityLabel, allData$activity)
  currentActivity <- currentActivity + 1
}

allData$activity <- as.factor(allData$activity)
allData$subject <- as.factor(allData$subject)

tidy = aggregate(allData, by=list(activity = allData$activity, subject=allData$subject), mean)

# Remove the subject and activity column, since a mean of those has no use
tidy[,90] = NULL
tidy[,89] = NULL
write.table(tidy, "tidy.txt", sep="\t")