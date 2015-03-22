
#Set data directory
currentloc <- getwd()
dataloc <- file.path(currentloc, "data/UCI HAR Dataset")

# read all the data files
test.activity <- read.table(paste0(dataloc, "/test/y_test.txt"))
test.subject <- read.table(paste0(dataloc, "/test/subject_test.txt"))
test.data <- read.table(paste0(dataloc, "/test/X_test.txt"))
train.activity <- read.table(paste0(dataloc, "/train/y_train.txt"))
train.subject <- read.table(paste0(dataloc, "/train/subject_train.txt"))
train.data <- read.table(paste0(dataloc, "/train/X_train.txt"))

# merge subjects and activities into single dataset
merged.subject <- rbind(test.subject, train.subject)
names(merged.subject) <- c("Subject")
merged.activity <- rbind(test.activity, train.activity)
names(merged.activity) <- c("Activity")
merged.data <- cbind(cbind(merged.subject, merged.activity), rbind(test.data, train.data))

# get features with mean or standard and merge with dataset
features <- read.table(paste0(dataloc, "/features.txt"))
filtered.features <- grep("-(mean|std)\\(\\)", features[,2])

merged.data <- merged.data[, filtered.features + 2]
names(merged.data) <- features[filtered.features, 2]

# change column names to be descriptive
names(merged.data) <- gsub("tBody", "Time.Body", names(merged.data))
names(merged.data) <- gsub("tGravity", "Time.Gravity", names(merged.data))
names(merged.data) <- gsub("fBody", "FFT.Body", names(merged.data))
names(merged.data) <- gsub("fGravity", "FFT.Body", names(merged.data))
names(merged.data) <- gsub("\\-mean\\(\\)", ".Mean", names(merged.data))
names(merged.data) <- gsub("\\-std\\(\\)", ".Std", names(merged.data))

# get activity labels and merge with dataset
activitylabels <- read.table(paste0(dataloc, "/activity_labels.txt"))
names(activitylabels) <- c("activityID", "activityName")
merged.activity$label <- apply(merged.activity, 1, function(x) activitylabels$activityName[x])
tidy.data <- cbind(merged.data, merged.activity$label, merged.subject)
names(tidy.data)[names(tidy.data)=="merged.activity$label"] <- "Activity"

#calculate mean for each set of activity, subject
library(reshape2)
melted.data <- melt(tidy.data, id.vars=c("Activity", "Subject"))
tidy.means <- dcast(melted.data, Subject + Activity ~ variable, fun.aggregate=mean)

#write output file
write.table(tidy.means, file="tidy_means.txt", row.names=FALSE)



