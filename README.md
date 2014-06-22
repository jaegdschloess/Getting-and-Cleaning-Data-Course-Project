# "Getting and Cleaning Data"  Course Project script walkthrough

First, a data frame of feature names is read from features.txt in order to provide
data for later mapping from a positional column index to a meaningful variable name. 
Without this metadata, when we later read in a feature data frame, that data frame
would consist of nearly meaningless variables name like "V1","V2", which are supplied
by read.csv() as default column names.  However, with these feature names, we're able to identify the variable names properly which is crucial for downstream "ease of use".

Next, the feature names are searched (grepped) for the patterns mean() or std().  I chose to not include the variables containing meanFreq() because their naming convention was inconsistent with the predominant "mean()" pattern. 

Next, we read the features, subjects, and labels into three data frames for both 
the test and training sets, resulting in 6 data frames. For the features, the "col.names" argument to the read.csv() call is key, as is the 'check.names' argument. By setting 'col.names' to the previously constructed vector of meaningful feature names, we've met the objective of providing descriptive variable names. By setting the 'check.names' argument to read.csv() to false, the column names aren't modified by R and that makes it straight-forward to selectively pick out columns later on. An alternative would have been to use the make.names() function however this seemed to produce less readable column names. Each set of 3 data frames are combined column-wise, with cbind(), producing the variables train_df and test_df. This step combines the measures (the feature data frame) with the two dimension data frames.
Without this step, we'd only have measures, with no dimensions (like subject and activity) at all!  Of note, unwanted features are eliminated via a call to subset() when creating test_df and train_df. Only the features matching our pattern are selected from the feature data frame.

The data frames train_df and test_df are combined row-wise with rbind to produce a
final data frame, named final_df. Pretty simple, but it's not final quite yet despite
the name.  There's just one variable left to add, and that's variable produced by a lookup from activity id to activity  name. Using standard R subsetting, the activity_id variable from the final_df data frame
is used as index into the  activites_df data frame, producing the set id to name match. The final data frame final_df,  which merges the test and training data sets into one data set, is now complete.

The remainder of the code deals with creation of the second and independent tidy data set. Using melt(), the data frame is re-arranged such that the measures are converted from 
variables into additional observations. Then, using dcast(), a "group by" is performed on 
subject and activity, which go onto the rows of our tidy data set. The aggregate function
'mean' is then run on the desired measures for each subject/activity pair, which produces
the tidy_df data frame, our tidy data set.
The column names of the measures for the tidy data set are pre-pended with the word "avg" to indicate they are averages.

Lastly, the tidy data set is written out to a text file via write.csv(), absent the row names which are superflous.
