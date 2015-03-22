# TidyDataProject
This repository contains submissions for the Course Project for the Coursera course - Getting and Cleaning Data



##Information
There are a total of 4 files in this repository:

1. README.md: This file, which contains the information and content of this repository
2. run_analysis.R: R script required for the Course Project
3. tidy_means.txt: Output file containing tidy data after running run_analysis.R
3. CodeBook.md: Contains details of the steps done in run_analysis.R and contents of tidy_means.txt



##Usage of R script
The run_analysis.R performs analysis on the raw data set downloaded from UCI website and produces a tidy subset of the data.  Description of the data set, detailed transformations performed and the output are documented in CodeBook.md  

Command to run the R script in Windows
```
source("run_analysis.R")
```
Running the script will produce an output file "tidy_means.txt" and description of "tidy_means.txt" can be found in CodeBook.md

The script requires the "reshape2" package
