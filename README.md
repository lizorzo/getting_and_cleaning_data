Getting and Cleaning Data
=========================

Coursera Project
----------------

<ol>
<li>Merges the training and the test sets to create one data set.</li>
<li>Extracts only the measurements on the mean and standard deviation for each measurement.</li>
<li>Uses descriptive activity names to name the activities in the data set.</li>
<li>Appropriately labels the data set with descriptive variable names.</li>
<li>Creates a second, independent tidy data set with the average of each variable for each activity and each subject.</li>
</ol> 

Step-by-Step
------------

<ol>
<li>Download the data source in <blockquote>https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</blockquote></li>
<li>Put it in your local drive. You'll have a ("UCI HAR Dataset") folder.</li>
<li>Put <blockquote>run_analysis.R</blockquote> in the parent folder of <blockquote>UCI HAR Dataset</blockquote></li>
<li>Open <blockquote>run_analysis.R</blockquote> and change the parameter in the <blockquote>setwd()</blockquote> function.</li>
<li>This parameter must be your working directory - aka the same directory where the <blockquote>run_analysis.R</blockquote> script and the <blockquote>UCI HAR Dataset</blockquote> folder are placed in.</li>
<li>Run source <blockquote>run_analysis.R</blockquote>, then it will generate a new file <blockquote>tiny.txt</blockquote> in your working directory.</li>
</ol>