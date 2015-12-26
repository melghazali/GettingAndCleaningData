# Code Book File: HAR_AVG_by_Subject_Activities.txt

## Original Data Collection URL
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

** short desc - to be done

## Tidy Data Parameters
Subject                                                           : int  1 1 1 1 1 1 2 2 2 2 ...
Activity                                                          : Factor w/ 6 levels "LAYING","SITTING",..: 1 2 3 4 5 6 1 2 3 4 ...
TimeDomain.BodyAcceleration.Mean.X                                : num  0.222 0.261 0.279 0.277 0.289 ...
TimeDomain.BodyAcceleration.Mean.Y                                : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
TimeDomain.BodyAcceleration.Mean.Z                                : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...
TimeDomain.BodyAcceleration.StandardDeviation.X                   : num  -0.928 -0.977 -0.996 -0.284 0.03 ...
TimeDomain.BodyAcceleration.StandardDeviation.Y                   : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
TimeDomain.BodyAcceleration.StandardDeviation.Z                   : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...
TimeDomain.GravityAcceleration.Mean.X                             : num  -0.249 0.832 0.943 0.935 0.932 ...
TimeDomain.GravityAcceleration.Mean.Y                             : num  0.706 0.204 -0.273 -0.282 -0.267 ...
TimeDomain.GravityAcceleration.Mean.Z                             : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...
TimeDomain.GravityAcceleration.StandardDeviation.X                : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...
TimeDomain.GravityAcceleration.StandardDeviation.Y                : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...
TimeDomain.GravityAcceleration.StandardDeviation.Z                : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...
TimeDomain.BodyAccelerationJerk.Mean.X                            : num  0.0811 0.0775 0.0754 0.074 0.0542 ...
TimeDomain.BodyAccelerationJerk.Mean.Y                            : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...
TimeDomain.BodyAccelerationJerk.Mean.Z                            : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...
TimeDomain.BodyAccelerationJerk.StandardDeviation.X               : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...
TimeDomain.BodyAccelerationJerk.StandardDeviation.Y               : num  -0.924 -0.981 -0.986 0.067 -0.102 ...
TimeDomain.BodyAccelerationJerk.StandardDeviation.Z               : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...
TimeDomain.BodyAngularSpeed.Mean.X                                : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...
TimeDomain.BodyAngularSpeed.Mean.Y                                : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...
TimeDomain.BodyAngularSpeed.Mean.Z                                : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...
TimeDomain.BodyAngularSpeed.StandardDeviation.X                   : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...
TimeDomain.BodyAngularSpeed.StandardDeviation.Y                   : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...
TimeDomain.BodyAngularSpeed.StandardDeviation.Z                   : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...
TimeDomain.BodyAngularAcceleration.Mean.X                         : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...
TimeDomain.BodyAngularAcceleration.Mean.Y                         : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...
TimeDomain.BodyAngularAcceleration.Mean.Z                         : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...
TimeDomain.BodyAngularAcceleration.StandardDeviation.X            : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...
TimeDomain.BodyAngularAcceleration.StandardDeviation.Y            : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...
TimeDomain.BodyAngularAcceleration.StandardDeviation.Z            : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...
TimeDomain.BodyAccelerationMagnitude.Mean                         : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
TimeDomain.BodyAccelerationMagnitude.StandardDeviation            : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
TimeDomain.GravityAccelerationMagnitude.Mean                      : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
TimeDomain.GravityAccelerationMagnitude.StandardDeviation         : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
TimeDomain.BodyAccelerationJerkMagnitude.Mean                     : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
TimeDomain.BodyAccelerationJerkMagnitude.StandardDeviation        : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
TimeDomain.BodyAngularSpeedMagnitude.Mean                         : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
TimeDomain.BodyAngularSpeedMagnitude.StandardDeviation            : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...
TimeDomain.BodyAngularAccelerationMagnitude.Mean                  : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...
TimeDomain.BodyAngularAccelerationMagnitude.StandardDeviation     : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...
FrequencyDomain.BodyAcceleration.Mean.X                           : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
FrequencyDomain.BodyAcceleration.Mean.Y                           : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
FrequencyDomain.BodyAcceleration.Mean.Z                           : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...
FrequencyDomain.BodyAcceleration.StandardDeviation.X              : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
FrequencyDomain.BodyAcceleration.StandardDeviation.Y              : num  -0.834 -0.917 -0.972 0.056 -0.113 ...
FrequencyDomain.BodyAcceleration.StandardDeviation.Z              : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...
FrequencyDomain.BodyAcceleration.MeanFrequency.X                  : num  -0.1588 -0.0495 0.0865 -0.2075 -0.3074 ...
FrequencyDomain.BodyAcceleration.MeanFrequency.Y                  : num  0.0975 0.0759 0.1175 0.1131 0.0632 ...
FrequencyDomain.BodyAcceleration.MeanFrequency.Z                  : num  0.0894 0.2388 0.2449 0.0497 0.2943 ...
FrequencyDomain.BodyAccelerationJerk.Mean.X                       : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
FrequencyDomain.BodyAccelerationJerk.Mean.Y                       : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
FrequencyDomain.BodyAccelerationJerk.Mean.Z                       : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...
FrequencyDomain.BodyAccelerationJerk.StandardDeviation.X          : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Y          : num  -0.932 -0.983 -0.987 0.107 -0.135 ...
FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Z          : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...
FrequencyDomain.BodyAccelerationJerk.MeanFrequency.X              : num  0.132 0.257 0.314 -0.209 -0.253 ...
FrequencyDomain.BodyAccelerationJerk.MeanFrequency.Y              : num  0.0245 0.0475 0.0392 -0.3862 -0.3376 ...
FrequencyDomain.BodyAccelerationJerk.MeanFrequency.Z              : num  0.02439 0.09239 0.13858 -0.18553 0.00937 ...
FrequencyDomain.BodyAngularSpeed.Mean.X                           : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...
FrequencyDomain.BodyAngularSpeed.Mean.Y                           : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
FrequencyDomain.BodyAngularSpeed.Mean.Z                           : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
FrequencyDomain.BodyAngularSpeed.StandardDeviation.X              : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...
FrequencyDomain.BodyAngularSpeed.StandardDeviation.Y              : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
FrequencyDomain.BodyAngularSpeed.StandardDeviation.Z              : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...
FrequencyDomain.BodyAngularSpeed.MeanFrequency.X                  : num  -0.00355 0.18915 -0.12029 0.01478 -0.10045 ...
FrequencyDomain.BodyAngularSpeed.MeanFrequency.Y                  : num  -0.0915 0.0631 -0.0447 -0.0658 0.0826 ...
FrequencyDomain.BodyAngularSpeed.MeanFrequency.Z                  : num  0.010458 -0.029784 0.100608 0.000773 -0.075676 ...
FrequencyDomain.BodyAccelerationMagnitude.Mean                    : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
FrequencyDomain.BodyAccelerationMagnitude.StandardDeviation       : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
FrequencyDomain.BodyAccelerationMagnitude.MeanFrequency           : num  0.0864 0.2367 0.2846 0.1906 0.1192 ...
FrequencyDomain.BodyAccelerationJerkMagnitude.Mean                : num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
FrequencyDomain.BodyAccelerationJerkMagnitude.StandardDeviation   : num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
FrequencyDomain.BodyAccelerationJerkMagnitude.MeanFrequency       : num  0.2664 0.3519 0.4222 0.0938 0.0765 ...
FrequencyDomain.BodyAngularSpeedMagnitude.Mean                    : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
FrequencyDomain.BodyAngularSpeedMagnitude.StandardDeviation       : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
FrequencyDomain.BodyAngularSpeedMagnitude.MeanFrequency           : num  -0.139775 -0.000262 -0.028606 0.268844 0.349614 ...
FrequencyDomain.BodyAngularAccelerationMagnitude.Mean             : num  -0.942 -0.99 -0.995 -0.319 -0.282 ...
FrequencyDomain.BodyAngularAccelerationMagnitude.StandardDeviation: num  -0.933 -0.987 -0.995 -0.382 -0.392 ...
FrequencyDomain.BodyAngularAccelerationMagnitude.MeanFrequency    : num  0.176 0.185 0.334 0.191 0.19 ...