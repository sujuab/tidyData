# Code book for Tidy Data

tidy_data.txt codebook.

The output data can be obtained in the project directory as tidy_data.txt. This can be read using read.table command.

Each Observation the file consists of the Subject and activity and the average of a measurement group by subject & activity. There are 180 observations and 86 measurements.

The variables in the file are

1. subject - The identifier for each Subject on which the experiment was conducted

Possible values are 1,2,3…30

2. activity - The Activities performed by the subject

Possible values are WALKING WALKING_UPSTAIRS WALKING_DOWNSTAIRS SITTING STANDING LAYING

3. The following list are the average of feature grouped by Subject and activity. 
tBodyAcc.mean...X
tBodyAcc.mean...Y                   
tBodyAcc.mean...Z
tGravityAcc.mean...X                
tGravityAcc.mean...Y
tGravityAcc.mean...Z                
tBodyAccJerk.mean...X
tBodyAccJerk.mean...Y              
tBodyAccJerk.mean...Z
tBodyGyro.mean...X                  
tBodyGyro.mean...Y
tBodyGyro.mean...Z                  
tBodyGyroJerk.mean...X
tBodyGyroJerk.mean...Y              
tBodyGyroJerk.mean...Z
tBodyAccMag.mean..                  
tGravityAccMag.mean..
tBodyAccJerkMag.mean..              
tBodyGyroMag.mean..
tBodyGyroJerkMag.mean..             
fBodyAcc.mean...X
fBodyAcc.mean...Y                   
fBodyAcc.mean...Z
fBodyAcc.meanFreq...X               
fBodyAcc.meanFreq...Y
fBodyAcc.meanFreq...Z               
fBodyAccJerk.mean...X
fBodyAccJerk.mean...Y               
fBodyAccJerk.mean...Z
fBodyAccJerk.meanFreq...X           
fBodyAccJerk.meanFreq...Y
fBodyAccJerk.meanFreq...Z           
fBodyGyro.mean...X
fBodyGyro.mean...Y                  
fBodyGyro.mean...Z
fBodyGyro.meanFreq...X              
fBodyGyro.meanFreq...Y
fBodyGyro.meanFreq...Z             
fBodyAccMag.mean..
fBodyAccMag.meanFreq..              
fBodyBodyAccJerkMag.mean..
fBodyBodyAccJerkMag.meanFreq..      
fBodyBodyGyroMag.mean..
fBodyBodyGyroMag.meanFreq..         
fBodyBodyGyroJerkMag.mean..
fBodyBodyGyroJerkMag.meanFreq..     
angle.tBodyAccMean.gravity.
angle.tBodyAccJerkMean..gravityMean.
angle.tBodyGyroMean.gravityMean.
angle.tBodyGyroJerkMean.gravityMean.
angle.X.gravityMean.
angle.Y.gravityMean.                
angle.Z.gravityMean.
tBodyAcc.std...X                    
tBodyAcc.std...Y
tBodyAcc.std...Z                    
tGravityAcc.std...X
tGravityAcc.std...Y                 
tGravityAcc.std...Z
tBodyAccJerk.std...X                
tBodyAccJerk.std...Y
tBodyAccJerk.std...Z                
tBodyGyro.std...X
tBodyGyro.std...Y                
tBodyGyro.std...Z
tBodyGyroJerk.std...X              
tBodyGyroJerk.std...Y
tBodyGyroJerk.std...Z               
tBodyAccMag.std..
tGravityAccMag.std..                
tBodyAccJerkMag.std..
tBodyGyroMag.std..                  
tBodyGyroJerkMag.std..
fBodyAcc.std...X                    
fBodyAcc.std...Y
fBodyAcc.std...Z                 
fBodyAccJerk.std...X
fBodyAccJerk.std...Y                
fBodyAccJerk.std...Z
fBodyGyro.std...X                  
fBodyGyro.std...Y
fBodyGyro.std...Z            
fBodyAccMag.std..
fBodyBodyAccJerkMag.std..           
fBodyBodyGyroMag.std..
fBodyBodyGyroJerkMag.std..      