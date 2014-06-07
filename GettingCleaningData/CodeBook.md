## Introduction

The data comes from the dataset *Human Activity Recognition Using Smartphones Data Set*, provided by the Non Linear Complex Systems Laboratory. The original data set can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data Collection

The experiment was carried out with 30 volunteers within the age range of 19-48 years. Each person performed 6 activities, (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), while wearing a smartphone (Samsung Galaxy S II) on their waist. Data from the instruments was collected at a data rate of 50 Hz. The original study involved 2 teams, designated "test" and "training" data, however, the data was combined together for the purpose of this exercise. The data was then post processed, as is indicated on their web site.

The data sample provided was then further divided into each of the activities and subjects independently, and a mean was found for each subject/ activity combination. 

## Data

For more detailed information, see "features_info.txt" in the data package.

1. "Subject.ID" A unique id per subject, ranging from 1 to 30
2. "Activity" The activity performed. Labels are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3. "tBodyAcc.mean...X" Mean Body Acceleration in X direction
4. "tBodyAcc.mean...Y" Mean Body Acceleration in Y direction
5. "tBodyAcc.mean...Z" Mean Body Acceleration in Z direction
6. "tBodyAcc.std...X" Std Body Acceleration in X direction
7. "tBodyAcc.std...Y" Std Body Acceleration in Y direction
8. "tBodyAcc.std...Z" Std Body Acceleration in Z direction
9. "tGravityAcc.mean...X" Mean Gravity Acceleration in X direction
10. "tGravityAcc.mean...Y" Mean Gravity Acceleration in Y direction
11. "tGravityAcc.mean...Z" Mean Gravity Acceleration in Z direction
12. "tGravityAcc.std...X" Std Gravity Acceleration in X direction
13. "tGravityAcc.std...Y" Std Gravity Acceleration in X direction
14. "tGravityAcc.std...Z" Std Gravity Acceleration in X direction
15. "tBodyAccJerk.mean...X" Mean Body Jerk Acceleration in X direction
16. "tBodyAccJerk.mean...Y" Mean Body Jerk Acceleration in Y direction
17. "tBodyAccJerk.mean...Z" Mean Body Jerk Acceleration in Z direction
18. "tBodyAccJerk.std...X" Std Body Jerk Acceleration in X direction
19. "tBodyAccJerk.std...Y" Std Body Jerk Acceleration in Y direction
20. "tBodyAccJerk.std...Z" Std Body Jerk Acceleration in Z direction
21. "tBodyGyro.mean...X" Body Gyro Mean in X
22. "tBodyGyro.mean...Y" Body Gyro Mean in Y
23. "tBodyGyro.mean...Z" Body Gyro Mean in Z
24. "tBodyGyro.std...X" Body Gyro Std in X
25. "tBodyGyro.std...Y" Body Gyro Std in Y
26. "tBodyGyro.std...Z" Body Gyro Std in Z
27. "tBodyGyroJerk.mean...X" Body Gyro Jerk Mean in X
28. "tBodyGyroJerk.mean...Y" Body Gyro Jerk Mean in Y
29. "tBodyGyroJerk.mean...Z" Body Gyro Jerk Mean in Z
30. "tBodyGyroJerk.std...X" Body Gyro Jerk Std in X
31. "tBodyGyroJerk.std...Y" Body Gyro Jerk Std in Y
32. "tBodyGyroJerk.std...Z" Body Gyro Jerk Std in Z
33. "tBodyAccMag.mean.." Body Acceleration mean
34. "tBodyAccMag.std.." Body Acceleration Std
35. "tGravityAccMag.mean.." Gravity Acceleration Mean
36. "tGravityAccMag.std.." Gravity Acceleration Std
37. "tBodyAccJerkMag.mean.." Body Acceleration Jerk Mean
38. "tBodyAccJerkMag.std.." Body Acceleration Jerk Std
39. "tBodyGyroMag.mean.." Body Gyro Magnitude Mean
40. "tBodyGyroMag.std.." Body Gyro Magnitude Std
41. "tBodyGyroJerkMag.mean.." Body Gyro Jerk Magnitude
42. "tBodyGyroJerkMag.std.." Body Gyro Jerk Std
43. "fBodyAcc.mean...X" Body Acceleration Mean X
44. "fBodyAcc.mean...Y" Body Acceleration Mean Y
45. "fBodyAcc.mean...Z" Body Acceleration Mean Z
46. "fBodyAcc.std...X" Body Acceleration Std X
47. "fBodyAcc.std...Y" Body Acceleration Std Y
48. "fBodyAcc.std...Z" Body Acceleration Std Z
49. "fBodyAcc.meanFreq...X" Mean Frequency X
50. "fBodyAcc.meanFreq...Y" Mean Frequency Y
51. "fBodyAcc.meanFreq...Z" Mean Frequency Z
52. "fBodyAccJerk.mean...X" Mean Body Acceleration Jerk X
53. "fBodyAccJerk.mean...Y" Mean Body Acceleration Jerk Y
54. "fBodyAccJerk.mean...Z" Mean Body Acceleration Jerk Z
55. "fBodyAccJerk.std...X" Std Body Acceleration Jerk X
56. "fBodyAccJerk.std...Y" Std Body Acceleration Jerk Y
57. "fBodyAccJerk.std...Z" Std Body Acceleration Jerk Z
58. "fBodyAccJerk.meanFreq...X" Mean Body Acceleration Jerk Frequency X
59. "fBodyAccJerk.meanFreq...Y" Mean Body Acceleration Jerk Frequency Y
60. "fBodyAccJerk.meanFreq...Z" Mean Body Acceleration Jerk Frequency Z
61. "fBodyGyro.mean...X" Mean body Gyro X
62. "fBodyGyro.mean...Y" Mean body Gyro Y
63. "fBodyGyro.mean...Z" Mean body Gyro Z
64. "fBodyGyro.std...X" Std body Gyro X
65. "fBodyGyro.std...Y" Std body Gyro Y
66. "fBodyGyro.std...Z" Std body Gyro Z
67. "fBodyGyro.meanFreq...X" Mean Body Gyro Freq X
68. "fBodyGyro.meanFreq...Y" Mean Body Gyro Freq Y
69. "fBodyGyro.meanFreq...Z" Mean Body Gyro Freq Z
70. "fBodyAccMag.mean.." Mean Body Acceleration
71. "fBodyAccMag.std.." Std Body Acceleration
72. "fBodyAccMag.meanFreq.." Mean Body Acceleration Magnitude
73. "fBodyBodyAccJerkMag.mean.." Mean Bod Acceleration Jerk Magnitude
74. "fBodyBodyAccJerkMag.std.." Mean Body Acceleration Jerk Std
75. "fBodyBodyAccJerkMag.meanFreq.." Mean frequency of Body Acceleration Jerk
76. "fBodyBodyGyroMag.mean.." Mean Body Gyro Magnitude Mean
77. "fBodyBodyGyroMag.std.." Mean Body Gyro Magnitude Std
78. "fBodyBodyGyroMag.meanFreq.."  Mean Body Gyro Frequency
79. "fBodyBodyGyroJerkMag.mean.." Mean Body Gyro Jerk Magnitude
80. "fBodyBodyGyroJerkMag.std.."  Std Body Gyro Jerk Magnitude
81. "fBodyBodyGyroJerkMag.meanFreq.." Mean Body Gyro Jerk Frequency