# Accelerometer Fields

The data for these fields comes from 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Fields prefixed with an m.  represent the average values of the means for each measurement
Fields prefixed with an sd. represent the average values of the standard deviations

Data from many different files was merged as averages into this single file. A new variable
called (train) was created to indicate whether the participant was a member of the training
group (TRUE) or the test group (FALSE).

The names of the fields have only been modified slightly to permit reference back to the
more extensive documentation cited above.


1  subject		- an integer between 1 and 30 corresponding to a particular participant

2  activity		- the activity that the subject was engaged in at the time of measurement

3  train		- a boolean showing a value of TRUE if the subject was part of the training group

4  m.tBodyAcc-X		- various measurements taking values over [-1,1] indicating normalized movements

5  m.tBodyAcc-Y		  across three dimensions

6  m.tBodyAcc-Z

7  m.tGravityAcc-X

8  m.tGravityAcc-Y

9  m.tGravityAcc-Z

10 m.tBodyAccJerk-X

11 m.tBodyAccJerk-Y

12 m.tBodyAccJerk-Z

13 m.tBodyGyro-X

14 m.tBodyGyro-Y

15 m.tBodyGyro-Z

16 m.tBodyGyroJerk-X

17 m.tBodyGyroJerk-Y

18 m.tBodyGyroJerk-Z

19 m.tBodyAccMag	- values suffixed with Mag indicate magnitude of acceleration

20 m.tGravityAccMag

21 m.tBodyAccJerkMag

22 m.tBodyGyroMag

23 m.tBodyGyroJerkMag

24 m.fBodyAcc-X

25 m.fBodyAcc-Y

26 m.fBodyAcc-Z

27 m.fBodyAccJerk-X

28 m.fBodyAccJerk-Y

29 m.fBodyAccJerk-Z

30 m.fBodyGyro-X

31 m.fBodyGyro-Y

32 m.fBodyGyro-Z

33 m.fBodyAccMag

34 m.fBodyBodyAccJerkMag

35 m.fBodyBodyGyroMag

36 m.fBodyBodyGyroJerkMag

37 sd.tBodyAcc-X	- corresponding standard deviations start here

38 sd.tBodyAcc-Y

39 sd.tBodyAcc-Z

40 sd.tGravityAcc-X

41 sd.tGravityAcc-Y

42 sd.tGravityAcc-Z

43 sd.tBodyAccJerk-X

44 sd.tBodyAccJerk-Y

45 sd.tBodyAccJerk-Z

46 sd.tBodyGyro-X

47 sd.tBodyGyro-Y

48 sd.tBodyGyro-Z

49 sd.tBodyGyroJerk-X

50 sd.tBodyGyroJerk-Y

51 sd.tBodyGyroJerk-Z

52 sd.tBodyAccMag

53 sd.tGravityAccMag

54 sd.tBodyAccJerkMag

55 sd.tBodyGyroMag

56 sd.tBodyGyroJerkMag

57 sd.fBodyAcc-X

58 sd.fBodyAcc-Y

59 sd.fBodyAcc-Z

60 sd.fBodyAccJerk-X

61 sd.fBodyAccJerk-Y

62 sd.fBodyAccJerk-Z

63 sd.fBodyGyro-X

64 sd.fBodyGyro-Y

65 sd.fBodyGyro-Z

66 sd.fBodyAccMag

67 sd.fBodyBodyAccJerkMag

68 sd.fBodyBodyGyroMag

69 sd.fBodyBodyGyroJerkMag
