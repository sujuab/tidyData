# Tidy Data

This repository contains the script needed for extracting specific data as detailed in the Tidy data Course.

#Input Data

The input data consists of the data collected from the accelerometers of a wearing a smartphone (Samsung Galaxy S II). The experiment was carried on 30 subject when they were performing 6 different activities.

The input data contains 10299 observation with 561 features. In addition the data also contains the subject and activity for each observation

#Output Data

The output is transformed and created from the input data by a series of R commands. It consists of the average value of Std & Mean values of the features grouped by the Subject and activity.

After the transformation the output summarized data consists of 180 rows and 86 features along with the subject and activity.

#Process

1. Download the files provided in the course project and unzip it into a folder.
2. Make this folder as the current working directory
3. Install dplyr package and run library(dplyr)
4. Now run the run_analysis.R provided in this repository to obtain tidy_data.txt as output.
5. The features.txt and activity_labels.txt are loaded to obtain the feature names and activity labels.
6. Subject list is obtained from Subject_train.txt and Sunject_test.txt
7. The activity list is obtained from ytrain.txt and ytest.txt. The activity id is converted into activity labels by using the activity_labels.
8. The features are contained in the xtrain.txt and ytrain.txt. These two are loaded and the fature names are added from features.txt
9. The train data is combined together and the test data is combined together
10. an rbind is performed to combine train & text data
11. This is followed by removing all features that do not have mean or std in their names
12. The data is then grouped by Sunject and activity
13. The average of each variable with std & mean is obtained for each subject & activity.
