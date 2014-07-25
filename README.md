---
title: "README"
author: "Grayson Hardaway"
date: "Thursday, July 24, 2014"
output: html_document
---

The script run_analysis.R produces an aggregated and filitered dataset from the data available in this directory.

The data, as it is now, is split into two sets:  X, which contains the feature vectors, and Y, which contains the type of activity being performed.  The sets are related by their line number; that is, the feature vector on line 100 in X corresponds to the activity on line 100 in Y.

Furthermore, X and Y are both split into two subsets:  Training and Test.

run_analysis.R combines the Training and Test subsets for X and Y, that is, appends the Test subset to the Training subset for X and Y.  Furthermore, the script appends the activity labels in Y to the feature vectors in X.  This results in a dataset in which the final column is the activity label and the preceding columns are the feature vectors.

run_analysis.R additionally transforms the integer identifiers for the activity labels in Y to strings representing the activity to remove ambiguity.

run_analysis.R also appends another column beyond the activity labels, representative of the subject performing the activity.  This data is contained in the subject_train.txt and subject_test.txt files.  

run_analysis.R selects only the features from X which are mean and standard deviation calculations of the original signal.  These features contain the substring "mean" and "std," respectively.  See the codebook for the full list of features.

run_analysis.R will produce this dataset in a CSV file named "UCIHARDataset_clean.csv."

run_analysis.R will also produce a second dataset containing the averages of the reduced feature set by activity and subject.  To do this, the features are binned into one of 180 bins, each representing a combination of activity and subject.  The averages are calculated for the feature vectors in each bin.  The script will produce this dataset as "averages_by_activity_and_subject.csv."