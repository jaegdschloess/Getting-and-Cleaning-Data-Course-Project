# Set working directory to the "UCI Har Dataset" on your local machine 
# i.e. setwd('C:/Users/jaegdschloess/repo/Getting-and-Cleaning-Data-Course-Project/UCI HAR Dataset')
library(reshape2)

# Relative path to directory containing data (do include backslash )
data_set_path = "./"

# Load feature names so we can later name the variables descriptively
# This because X_*.txt files don't have column headers for the features they 
# contain.
features_path <- paste(data_set_path,"features.txt",sep='')
features_df <- read.csv(features_path,
                        header=FALSE,
                        col.names=c("feature_id","feature_name"),
                        colClasses=c("integer","character"),
                        sep = ' ')

# Extract the measure names for features of mean and standard deviation
# which I take to mean any measure with either the string 'mean()' or 'std()'.
mean_std_measures <- grep('(mean|std)\\(\\)',features_df$feature_name,value=T)
                        
# Read in test features and appropriately label the data set variables  
# with descriptive variable names
test_features_path <- paste(data_set_path,"test/X_test.txt",sep='')
test_features_df <- read.csv(test_features_path,header=FALSE
                             ,col.names=features_df$feature_name
                             # Leave variable names alone because we want to
                             # subset them later by name
                             ,check.names=F 
                             ,sep= '')

# Read in test subjects
test_subject_path <- paste(data_set_path,"test/subject_test.txt",sep='')
test_subject_df <- read.csv(test_subject_path,header=FALSE,
                            col.names=c("subject_id"))

# Read in test labels. The labels are the classifications of
# activities like WALKING, STANDING, for each experimental measurement.
test_labels_path <- paste(data_set_path,"test/y_test.txt",sep='')
test_labels_df <- read.csv(test_labels_path,header=FALSE
                             ,col.names=c("activity_id")
                             ,sep= '')

# Combine all 3 test data frames vertically, meaning combine the columns.
# together.  The columns combined are the test subject ids, the activity label,
# and the various measurements of acceleration and angular velocity which are 
# either a sum or a standard deviation.
test_df <- cbind(test_subject_df
                ,test_labels_df
                ,subset(test_features_df,select=mean_std_measures))

# Read in features from training data and appropriately label the data set 
# variables with descriptive variable names
train_features_path <- paste(data_set_path,"train/X_train.txt",sep='')
train_features_df <- read.csv(train_features_path,header=FALSE
                             ,col.names=features_df$feature_name
                             # Leave variable names alone because we want to
                             # extract them later by name
                             ,check.names=F                              
                             ,sep= '')

# Read in training subjects into data frame
train_subject_path <- paste(data_set_path,"train/subject_train.txt",sep='')
train_subject_df <- read.csv(train_subject_path,header=FALSE,
                            col.names=c("subject_id"))

# Read in training labels to a data frame. The labels are the classifications of
# activities like WALKING, STANDING, for each experimental measurement.
train_labels_path <- paste(data_set_path,"train/y_train.txt",sep='')
train_labels_df <- read.csv(train_labels_path,header=FALSE
                           ,col.names=c("activity_id")
                           ,sep= '')

# Combine all 3 training data frames vertically, meaning combine the columns.
# together.  The columns combined are the test subject ids, the activity label,
# and the various measurements of acceleration and angular velocity which are 
# either a sum or a standard deviation.
train_df <- cbind(train_subject_df
                  ,train_labels_df
                  ,subset(train_features_df,select=mean_std_measures))

# Merge the training and test to create one data set
final_df <- rbind(test_df,train_df)

# get activity labels so the activity ids can be decoded into activity names
activities_path <- paste(data_set_path,"activity_labels.txt",sep='')
activities_df <- read.csv(activities_path,
                          header=FALSE,
                          col.names=c("activity_id","activity_name"),
                          colClasses=c("integer","character"),
                          sep = ' ')

# convert to use of descriptive activity names
# by looking up and then adding an activity_name column to the combined data set
final_df$activity_name <- 
    activities_df[final_df$activity_id,"activity_name"]

# Create a 2nd independent tidy data set with the average of each variable 
# for each activity and each subject

# unpivot data (i.e. convert measure variables to observations ) 
molten_df <- melt(final_df,id=c("subject_id","activity_name"),
                  measure.vars=mean_std_measures)

# Determine mean of measures by subject and activity, producing tidy data set
tidy_df <- dcast(molten_df,subject_id + activity_name ~ mean_std_measures,mean)

# Rename measure columns to start with the string 'avg' to more descriptively 
# indicate they are an average
colnames(tidy_df)[colnames(tidy_df) %in% mean_std_measures] <-
    paste("avg_",mean_std_measures,sep='')

# Output tidy data set for upload purposes
# Set extension to ".txt" because Coursera doesn't except .csv files at the moment.
write.csv(tidy_df,file="tidy_data.txt",row.names=F)
