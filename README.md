#Getting and Cleaning Data

##Coursera Project

<ol>
<li>Merges the training and the test sets to create one data set.</li>
<li>Extracts only the measurements on the mean and standard deviation for each measurement.</li>
<li>Uses descriptive activity names to name the activities in the data set.</li>
<li>Appropriately labels the data set with descriptive variable names.</li>
<li>Creates a second, independent tidy data set with the average of each variable for each activity and each subject.</li>
</ol> 

##Step-by-Step

* Download the data source in <blockquote>https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</blockquote>
* Put it in your local drive. You'll have a ```UCI HAR Dataset``` folder.
* Put ```run_analysis.R``` in the parent folder of ```UCI HAR Dataset```.
* Open ```run_analysis.R``` and change the parameter in the ```setwd()``` function.
* This parameter must be your working directory - aka the same directory where the ```run_analysis.R``` script and the ```UCI HAR Dataset``` folder are placed in.
* Run source ```run_analysis.R```, then it will generate a new file ```tiny.txt``` in your working directory.
