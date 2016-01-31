##
## Load in the files from a fixed format
## additional logic to save to a R format and load from a R format
## after the first load of the fixed file.  The fixed format is slow
## so this caching speeds up testing
##

library(dplyr)

test_set_file <- "test_set.Rda"
train_set_file <- "train_set.Rda"
if( file.exists(test_set_file)) {
	load(test_set_file)
} else {
	test_set <- read.fwf("./UCI HAR Dataset/test/X_test.txt", widths = seq(from=16, to=16, length.out = 561))
	save(test_set, file=test_set_file)
}
if( file.exists(train_set_file))
{
	load(train_set_file)
} else {
	train_set <- read.fwf("./UCI HAR Dataset/train/X_train.txt", widths = seq(from=16, to=16, length.out = 561))
	save(train_set, train_set_file)	
}

## Bind together the data sets
result <- rbind(test_set, train_set)

result <- tbl_df( result )

##
## Now load in the features.txt file for column names and
## clean them up prior to binding them to the results table
##

row_names <- read.delim("./UCI HAR Dataset/features.txt", sep=" ", header = FALSE, as.is = TRUE)
row_names <- row_names[,2]

#deal with duplicate rows and odd characters
valid_column_names <- make.names(row_names, unique=TRUE, allow_=TRUE)
colnames(result) <- valid_column_names

# strip out unneeded columns
result <- select(result,grep("mean\\.\\.|std\\.\\.",names(result)))

#lowercase
colnames(result) <- tolower(names(result))


#
# Get the activity data
#
activity_train_file <-  "./UCI HAR Dataset/train/y_train.txt"
activity_test_file <- "./UCI HAR Dataset/test/y_test.txt"
activity_label_file <- "./UCI HAR Dataset/activity_labels.txt"

activity_train <- read.delim(activity_train_file, header=FALSE)
activity_test <- read.delim(activity_test_file, header=FALSE)
activity_label <- read.delim(activity_label_file, header=FALSE, sep=" ", as.is=TRUE)

activity <- rbind(activity_test, activity_train)

activity <- tbl_df(activity)

colnames(activity) <- c("activity")

activity$activity <- as.factor(activity$activity)
activity$activity <- factor(activity$activity, levels=activity_label[,1], labels=activity_label[,2])

#
# Get the subject data
#

subject_train_file <-  "./UCI HAR Dataset/train/subject_train.txt"
subject_test_file <- "./UCI HAR Dataset/test/subject_test.txt"

subject_train <- read.delim(subject_train_file, header=FALSE)
subject_test <- read.delim(subject_test_file, header=FALSE)

subject <- rbind(subject_test, subject_train)
subject <- tbl_df(subject)

colnames(subject) <- c("subject")

subject$subject <- as.factor(subject$subject)


## Join together

totalresult <- bind_cols(subject, activity, result)

colnames(totalresult) <- gsub("^t", "time.", names(totalresult))
colnames(totalresult) <- gsub("^f", "frequency.", names(totalresult))
colnames(totalresult) <- gsub("\\.\\.", "", names(totalresult))

write.table(totalresult, "intermediate_dataset.txt")


grouped_result <- totalresult %>%
	group_by(subject, activity) %>%
	summarize_each(funs(mean)) %>%
	print

write.table(grouped_result, "final_dataset.txt")





