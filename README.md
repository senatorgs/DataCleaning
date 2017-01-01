
==================================================================
Coursera 
Johns Hopkins University
Getting and Cleaning Data Course Project
==================================================================

The project prepares a summarized, tidy data set from data provided by the University of California at Irvine 
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) measuring select activities of daily living of 30 subjects using accelerometers from the Samsung Galaxy S smartphone.

==================================================================
Project Contents
==================================================================

The following four files, located in the GitHub repository, fullfill the Getting and Cleaning Data Course Project. 

1) A readme file (README.md) summarizing the R code used to complete the project

2) A code book (codebook.md) summarizing the relevant variables in the tidy data set

3) A tidy data set in the form of a tab delimited text file (tidydata.txt)

4) Source R code (run_analysis.R) used to create the tidy data set

==================================================================
Description of run_analysis.R
==================================================================

(A) PART A of the R code sets working directories and reads in 8 data files to create the following R data sets:
	
	1) s_test is a column vector of subject IDs (2,947 x 1) for the subjects assigned to the "test" group. 
	Subject IDs take values between 1 and 30
	
	2) y_test is a column vector of activity codes (2,947 x 1) for the subjects assigned to the "test" group. 
	Activity codes take values between 1 and 6
	
	3) x_test is a matrix of measured variables (2,947 x 561) for the subjects assigned to the "test" group. 
	The variables retained for the project are summarized in the codebook.
	
	4) s_train is a column vector of subject IDs (7,352 x 1) for the subjects assigned to the "train" group. 
	Subject IDs take values between 1 and 30
	
	5) y_train is a column vector of activity codes (7,352 x 1) for the subjects assigned to the "train" group. 
	Activity codes take values between 1 and 6
	
	6) x_train is a matrix of measured variables (7,352 x 561) for the subjects assigned to the "train" group. 
	The variables retained for the project are summarized in the codebook.
	
	7) activity_labels is a mapping file (6 x 2) of activity codes and their associated descriptions (e.g. 1 = Walking)
	
	8) var_details is a mapping file (561 x 3) containing three columns:
		a) Variable0 - Default variable name values in the x_test and x_train files (V1 - V561)
		b) Variable - Descriptive variable name values (e.g. tBodyAcc-mean()-X)
		c) Type - Type of variable (e.g. mean, min, max, etc.)

(B)  PART B: 

	1) creates the data set test using the cbind operator merging: 
		a) the s_test data set from PART A
		b) the y_test data set from PART A
		c) the x_test data set from PART A
		
	2) creates the data set train using the cbind operator merging: 
		a) the s_train data set from PART A
		b) the y_train data set from PART A
		c) the x_train data set from PART A
		
	3) creates the data set fulldata by appending test and train data sets using the rbind operator

** PART B satisfies STEP 1 of the project to create a merged data set of the individual test and training data sets.

(C) PART C is an intermediate step in the R code that iteratively transposes the fulldata data set creating row values for each of the 561 column variables.

The resulting data set, transp1, is a longer, more narrow data set which will later facillitate an easy renaming of and selection from the 561 variables. 
    
(D) PART D creates the data set transp4 by merging a fascimile of the data set created in PART C, transp2, with the variable mapping data set variable_details by Variable0. 

As a result, the columns Variable (descriptive variable names) and Type (mean, min, max, etc.) are added as part of the merge. 
A row ID variable was created in the process to ensure the original order was preserved post merge. 

** PART D satisfies STEP 4 of the project to label the data set with descriptive variable names.

(E) PART E creates the data set tidydata1 (741,528 x 4) by filtering the data set transp4 from Part D for only those variables that represent a Type of mean or standard deviation as denoted by Type. 

All variables that have mean() and std() in the variable name in the features.txt file provided by UCI are denoted with a 
Type of 'mean' and 'std' respectively in the mapping file and are filtered as such within the R code.

In the process of PART E, the columns Variable0, ID, and Type were dropped as they are no longer needed.

** PART E satisfies STEP 2 of the project to extract only the measurements on the mean and standard deviation

(F) PART F merges the data set created in PART E, tidydata1, with a mapping file of activity codes and activity names by ActivityCode to create the data setmerge2. 

A row ID variable was created in the process to ensure the original order was preserved post merge. 

** PART F satisfies STEP 3 of the project to use descriptive activity names to name activities

(G) PART G creates the data set tidydata that calculates mean values for each subject, activity, and variable using the aggregate function while setting FUN=mean and finally creates a text file output of tidydata using the write.table function. 

In the process of PART G, the columns ActivityCode and id were omitted as they are no longer needed. 

** PART G satisfies STEP 5 of the project to create a second tidy data set with the averge of each variable for each activity and each subject.
