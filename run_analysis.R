# Read in names of features (Xnames) and activity labels (Ynames)
Xnames = read.table("features.txt", sep=" ", col.names=c("index", "names"))
Ynames = read.table("activity_labels.txt", sep=" ", col.names=c("index", "names"))

# Read in the training and test sets for X
Xtrain = read.table("train/X_train.txt", col.names=Xnames$names)
Xtest = read.table("test/X_test.txt", col.names=Xnames$names)
rm(Xnames)      #Xnames no longer needed, stored in X* column names

# Read in the training and test sets for Y
Ytrain = read.table("train/Y_train.txt")
Ytest = read.table("test/Y_test.txt")

# Read in the subjects, organized by row index, for the training and test sets
subjectTrain = read.table("train/subject_train.txt")
subjectTest = read.table("test/subject_test.txt")

# Create a map for subjects: from an integer 'i' to a string "Subjecti"
subjectMap = 1:30
for(i in 1:30) {
  subjectMap[i] = paste("Subject", i, sep="")
}

# Apply the map to turn all 'i' into "Subjecti"
subjectTrain = subjectMap[ subjectTrain[[1]] ]
subjectTest = subjectMap[ subjectTest[[1]] ]

# Create a new column for the subjects
Xtrain$subject = subjectTrain
Ytrain$subject = subjectTrain
Xtest$subject = subjectTest
Ytest$subject = subjectTest

#No longer needed, only used to create subject columns
rm(subjectMap)
rm(subjectTrain)
rm(subjectTest)

# Merge the training and test sets for X together
X = rbind(Xtrain, Xtest)
#No longer needed, stored in X
rm(Xtrain)
rm(Xtest)

#Merge the training and test sets for Y together
Y = rbind(Ytrain, Ytest)
#No longer needed, stored in Y
rm(Ytrain)
rm(Ytest)

# Map activity integers to their string representation in Ynames
Y = Ynames$names[ Y[[1]] ]

# Create a new column in X for the activity names
X$activity = Y

# Turn subject into a factor
X$subject = factor(X$subject)

# No longer needed, stored in X
rm(Y)
rm(Ynames)

# Extract the columns that contain mean and standard deviation measurements
# Using grep to identify 'mean' and 'std'
extractedMeans = X[,grep("mean[^F]", names(X))]
extractedStddevs = X[,grep("std", names(X))]

# Count the number of numeric columns which will be in the final data set
numNumericCols = ncol(extractedMeans) + ncol(extractedStddevs)

# Create the final data set (step 2)
data = cbind(extractedMeans, extractedStddevs, activity=X$activity, subject=X$subject)

#No longer needed, everything in 'data'
rm(extractedMeans)
rm(extractedStddevs)
rm(X)

# Write cleaned data to a file
write.csv(data, file="UCIHARDataset_clean.csv", row.names=F)

# Create a new, unique column/factor using activity and subject
# to give meaningful names to the second data set when using 'by()'
data$activity_and_subject = paste(data$activity, data$subject, sep="_")
data$activity_and_subject = factor(data$activity_and_subject)

# Get means by activity and subject
secondData = by(data[,1:numNumericCols], data$activity_and_subject, colMeans)

# 'by()' returns a "by" object.  (Why not just a DF... I'll never know).  
# Change to data frame; coercion doesn't work.
secondData = do.call("rbind", secondData)

# Write second dataset to a file
write.csv(secondData, file="averages_by_activity_and_subject.csv")
