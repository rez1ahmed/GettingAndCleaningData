# Codebook
Rezwan Ahmed  
Friday, June 19, 2015  

## The Data
The experiments have been carried out with a group of 30 volunteers within an 
age bracket of 19-48 years. Each person performed six activities (WALKING, 
WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer 
and gyroscope, we captured 3-axial linear acceleration and 3-axial angular 
velocity at a constant rate of 50Hz. The experiments have been video-recorded 
to label the data manually. The obtained dataset has been randomly partitioned 
into two sets, where 70% of the volunteers was selected for generating the 
training data and 30% the test data. 

Data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Original description of the dataset: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## The variables 

The following list of features are captured as part of the data to evaluate
each subjects activity.


```r
features <- read.table("UCI HAR Dataset/features.txt")
features[2]
```

```
##                                       V2
## 1                      tBodyAcc-mean()-X
## 2                      tBodyAcc-mean()-Y
## 3                      tBodyAcc-mean()-Z
## 4                       tBodyAcc-std()-X
## 5                       tBodyAcc-std()-Y
## 6                       tBodyAcc-std()-Z
## 7                       tBodyAcc-mad()-X
## 8                       tBodyAcc-mad()-Y
## 9                       tBodyAcc-mad()-Z
## 10                      tBodyAcc-max()-X
## 11                      tBodyAcc-max()-Y
## 12                      tBodyAcc-max()-Z
## 13                      tBodyAcc-min()-X
## 14                      tBodyAcc-min()-Y
## 15                      tBodyAcc-min()-Z
## 16                        tBodyAcc-sma()
## 17                   tBodyAcc-energy()-X
## 18                   tBodyAcc-energy()-Y
## 19                   tBodyAcc-energy()-Z
## 20                      tBodyAcc-iqr()-X
## 21                      tBodyAcc-iqr()-Y
## 22                      tBodyAcc-iqr()-Z
## 23                  tBodyAcc-entropy()-X
## 24                  tBodyAcc-entropy()-Y
## 25                  tBodyAcc-entropy()-Z
## 26                tBodyAcc-arCoeff()-X,1
## 27                tBodyAcc-arCoeff()-X,2
## 28                tBodyAcc-arCoeff()-X,3
## 29                tBodyAcc-arCoeff()-X,4
## 30                tBodyAcc-arCoeff()-Y,1
## 31                tBodyAcc-arCoeff()-Y,2
## 32                tBodyAcc-arCoeff()-Y,3
## 33                tBodyAcc-arCoeff()-Y,4
## 34                tBodyAcc-arCoeff()-Z,1
## 35                tBodyAcc-arCoeff()-Z,2
## 36                tBodyAcc-arCoeff()-Z,3
## 37                tBodyAcc-arCoeff()-Z,4
## 38            tBodyAcc-correlation()-X,Y
## 39            tBodyAcc-correlation()-X,Z
## 40            tBodyAcc-correlation()-Y,Z
## 41                  tGravityAcc-mean()-X
## 42                  tGravityAcc-mean()-Y
## 43                  tGravityAcc-mean()-Z
## 44                   tGravityAcc-std()-X
## 45                   tGravityAcc-std()-Y
## 46                   tGravityAcc-std()-Z
## 47                   tGravityAcc-mad()-X
## 48                   tGravityAcc-mad()-Y
## 49                   tGravityAcc-mad()-Z
## 50                   tGravityAcc-max()-X
## 51                   tGravityAcc-max()-Y
## 52                   tGravityAcc-max()-Z
## 53                   tGravityAcc-min()-X
## 54                   tGravityAcc-min()-Y
## 55                   tGravityAcc-min()-Z
## 56                     tGravityAcc-sma()
## 57                tGravityAcc-energy()-X
## 58                tGravityAcc-energy()-Y
## 59                tGravityAcc-energy()-Z
## 60                   tGravityAcc-iqr()-X
## 61                   tGravityAcc-iqr()-Y
## 62                   tGravityAcc-iqr()-Z
## 63               tGravityAcc-entropy()-X
## 64               tGravityAcc-entropy()-Y
## 65               tGravityAcc-entropy()-Z
## 66             tGravityAcc-arCoeff()-X,1
## 67             tGravityAcc-arCoeff()-X,2
## 68             tGravityAcc-arCoeff()-X,3
## 69             tGravityAcc-arCoeff()-X,4
## 70             tGravityAcc-arCoeff()-Y,1
## 71             tGravityAcc-arCoeff()-Y,2
## 72             tGravityAcc-arCoeff()-Y,3
## 73             tGravityAcc-arCoeff()-Y,4
## 74             tGravityAcc-arCoeff()-Z,1
## 75             tGravityAcc-arCoeff()-Z,2
## 76             tGravityAcc-arCoeff()-Z,3
## 77             tGravityAcc-arCoeff()-Z,4
## 78         tGravityAcc-correlation()-X,Y
## 79         tGravityAcc-correlation()-X,Z
## 80         tGravityAcc-correlation()-Y,Z
## 81                 tBodyAccJerk-mean()-X
## 82                 tBodyAccJerk-mean()-Y
## 83                 tBodyAccJerk-mean()-Z
## 84                  tBodyAccJerk-std()-X
## 85                  tBodyAccJerk-std()-Y
## 86                  tBodyAccJerk-std()-Z
## 87                  tBodyAccJerk-mad()-X
## 88                  tBodyAccJerk-mad()-Y
## 89                  tBodyAccJerk-mad()-Z
## 90                  tBodyAccJerk-max()-X
## 91                  tBodyAccJerk-max()-Y
## 92                  tBodyAccJerk-max()-Z
## 93                  tBodyAccJerk-min()-X
## 94                  tBodyAccJerk-min()-Y
## 95                  tBodyAccJerk-min()-Z
## 96                    tBodyAccJerk-sma()
## 97               tBodyAccJerk-energy()-X
## 98               tBodyAccJerk-energy()-Y
## 99               tBodyAccJerk-energy()-Z
## 100                 tBodyAccJerk-iqr()-X
## 101                 tBodyAccJerk-iqr()-Y
## 102                 tBodyAccJerk-iqr()-Z
## 103             tBodyAccJerk-entropy()-X
## 104             tBodyAccJerk-entropy()-Y
## 105             tBodyAccJerk-entropy()-Z
## 106           tBodyAccJerk-arCoeff()-X,1
## 107           tBodyAccJerk-arCoeff()-X,2
## 108           tBodyAccJerk-arCoeff()-X,3
## 109           tBodyAccJerk-arCoeff()-X,4
## 110           tBodyAccJerk-arCoeff()-Y,1
## 111           tBodyAccJerk-arCoeff()-Y,2
## 112           tBodyAccJerk-arCoeff()-Y,3
## 113           tBodyAccJerk-arCoeff()-Y,4
## 114           tBodyAccJerk-arCoeff()-Z,1
## 115           tBodyAccJerk-arCoeff()-Z,2
## 116           tBodyAccJerk-arCoeff()-Z,3
## 117           tBodyAccJerk-arCoeff()-Z,4
## 118       tBodyAccJerk-correlation()-X,Y
## 119       tBodyAccJerk-correlation()-X,Z
## 120       tBodyAccJerk-correlation()-Y,Z
## 121                   tBodyGyro-mean()-X
## 122                   tBodyGyro-mean()-Y
## 123                   tBodyGyro-mean()-Z
## 124                    tBodyGyro-std()-X
## 125                    tBodyGyro-std()-Y
## 126                    tBodyGyro-std()-Z
## 127                    tBodyGyro-mad()-X
## 128                    tBodyGyro-mad()-Y
## 129                    tBodyGyro-mad()-Z
## 130                    tBodyGyro-max()-X
## 131                    tBodyGyro-max()-Y
## 132                    tBodyGyro-max()-Z
## 133                    tBodyGyro-min()-X
## 134                    tBodyGyro-min()-Y
## 135                    tBodyGyro-min()-Z
## 136                      tBodyGyro-sma()
## 137                 tBodyGyro-energy()-X
## 138                 tBodyGyro-energy()-Y
## 139                 tBodyGyro-energy()-Z
## 140                    tBodyGyro-iqr()-X
## 141                    tBodyGyro-iqr()-Y
## 142                    tBodyGyro-iqr()-Z
## 143                tBodyGyro-entropy()-X
## 144                tBodyGyro-entropy()-Y
## 145                tBodyGyro-entropy()-Z
## 146              tBodyGyro-arCoeff()-X,1
## 147              tBodyGyro-arCoeff()-X,2
## 148              tBodyGyro-arCoeff()-X,3
## 149              tBodyGyro-arCoeff()-X,4
## 150              tBodyGyro-arCoeff()-Y,1
## 151              tBodyGyro-arCoeff()-Y,2
## 152              tBodyGyro-arCoeff()-Y,3
## 153              tBodyGyro-arCoeff()-Y,4
## 154              tBodyGyro-arCoeff()-Z,1
## 155              tBodyGyro-arCoeff()-Z,2
## 156              tBodyGyro-arCoeff()-Z,3
## 157              tBodyGyro-arCoeff()-Z,4
## 158          tBodyGyro-correlation()-X,Y
## 159          tBodyGyro-correlation()-X,Z
## 160          tBodyGyro-correlation()-Y,Z
## 161               tBodyGyroJerk-mean()-X
## 162               tBodyGyroJerk-mean()-Y
## 163               tBodyGyroJerk-mean()-Z
## 164                tBodyGyroJerk-std()-X
## 165                tBodyGyroJerk-std()-Y
## 166                tBodyGyroJerk-std()-Z
## 167                tBodyGyroJerk-mad()-X
## 168                tBodyGyroJerk-mad()-Y
## 169                tBodyGyroJerk-mad()-Z
## 170                tBodyGyroJerk-max()-X
## 171                tBodyGyroJerk-max()-Y
## 172                tBodyGyroJerk-max()-Z
## 173                tBodyGyroJerk-min()-X
## 174                tBodyGyroJerk-min()-Y
## 175                tBodyGyroJerk-min()-Z
## 176                  tBodyGyroJerk-sma()
## 177             tBodyGyroJerk-energy()-X
## 178             tBodyGyroJerk-energy()-Y
## 179             tBodyGyroJerk-energy()-Z
## 180                tBodyGyroJerk-iqr()-X
## 181                tBodyGyroJerk-iqr()-Y
## 182                tBodyGyroJerk-iqr()-Z
## 183            tBodyGyroJerk-entropy()-X
## 184            tBodyGyroJerk-entropy()-Y
## 185            tBodyGyroJerk-entropy()-Z
## 186          tBodyGyroJerk-arCoeff()-X,1
## 187          tBodyGyroJerk-arCoeff()-X,2
## 188          tBodyGyroJerk-arCoeff()-X,3
## 189          tBodyGyroJerk-arCoeff()-X,4
## 190          tBodyGyroJerk-arCoeff()-Y,1
## 191          tBodyGyroJerk-arCoeff()-Y,2
## 192          tBodyGyroJerk-arCoeff()-Y,3
## 193          tBodyGyroJerk-arCoeff()-Y,4
## 194          tBodyGyroJerk-arCoeff()-Z,1
## 195          tBodyGyroJerk-arCoeff()-Z,2
## 196          tBodyGyroJerk-arCoeff()-Z,3
## 197          tBodyGyroJerk-arCoeff()-Z,4
## 198      tBodyGyroJerk-correlation()-X,Y
## 199      tBodyGyroJerk-correlation()-X,Z
## 200      tBodyGyroJerk-correlation()-Y,Z
## 201                   tBodyAccMag-mean()
## 202                    tBodyAccMag-std()
## 203                    tBodyAccMag-mad()
## 204                    tBodyAccMag-max()
## 205                    tBodyAccMag-min()
## 206                    tBodyAccMag-sma()
## 207                 tBodyAccMag-energy()
## 208                    tBodyAccMag-iqr()
## 209                tBodyAccMag-entropy()
## 210               tBodyAccMag-arCoeff()1
## 211               tBodyAccMag-arCoeff()2
## 212               tBodyAccMag-arCoeff()3
## 213               tBodyAccMag-arCoeff()4
## 214                tGravityAccMag-mean()
## 215                 tGravityAccMag-std()
## 216                 tGravityAccMag-mad()
## 217                 tGravityAccMag-max()
## 218                 tGravityAccMag-min()
## 219                 tGravityAccMag-sma()
## 220              tGravityAccMag-energy()
## 221                 tGravityAccMag-iqr()
## 222             tGravityAccMag-entropy()
## 223            tGravityAccMag-arCoeff()1
## 224            tGravityAccMag-arCoeff()2
## 225            tGravityAccMag-arCoeff()3
## 226            tGravityAccMag-arCoeff()4
## 227               tBodyAccJerkMag-mean()
## 228                tBodyAccJerkMag-std()
## 229                tBodyAccJerkMag-mad()
## 230                tBodyAccJerkMag-max()
## 231                tBodyAccJerkMag-min()
## 232                tBodyAccJerkMag-sma()
## 233             tBodyAccJerkMag-energy()
## 234                tBodyAccJerkMag-iqr()
## 235            tBodyAccJerkMag-entropy()
## 236           tBodyAccJerkMag-arCoeff()1
## 237           tBodyAccJerkMag-arCoeff()2
## 238           tBodyAccJerkMag-arCoeff()3
## 239           tBodyAccJerkMag-arCoeff()4
## 240                  tBodyGyroMag-mean()
## 241                   tBodyGyroMag-std()
## 242                   tBodyGyroMag-mad()
## 243                   tBodyGyroMag-max()
## 244                   tBodyGyroMag-min()
## 245                   tBodyGyroMag-sma()
## 246                tBodyGyroMag-energy()
## 247                   tBodyGyroMag-iqr()
## 248               tBodyGyroMag-entropy()
## 249              tBodyGyroMag-arCoeff()1
## 250              tBodyGyroMag-arCoeff()2
## 251              tBodyGyroMag-arCoeff()3
## 252              tBodyGyroMag-arCoeff()4
## 253              tBodyGyroJerkMag-mean()
## 254               tBodyGyroJerkMag-std()
## 255               tBodyGyroJerkMag-mad()
## 256               tBodyGyroJerkMag-max()
## 257               tBodyGyroJerkMag-min()
## 258               tBodyGyroJerkMag-sma()
## 259            tBodyGyroJerkMag-energy()
## 260               tBodyGyroJerkMag-iqr()
## 261           tBodyGyroJerkMag-entropy()
## 262          tBodyGyroJerkMag-arCoeff()1
## 263          tBodyGyroJerkMag-arCoeff()2
## 264          tBodyGyroJerkMag-arCoeff()3
## 265          tBodyGyroJerkMag-arCoeff()4
## 266                    fBodyAcc-mean()-X
## 267                    fBodyAcc-mean()-Y
## 268                    fBodyAcc-mean()-Z
## 269                     fBodyAcc-std()-X
## 270                     fBodyAcc-std()-Y
## 271                     fBodyAcc-std()-Z
## 272                     fBodyAcc-mad()-X
## 273                     fBodyAcc-mad()-Y
## 274                     fBodyAcc-mad()-Z
## 275                     fBodyAcc-max()-X
## 276                     fBodyAcc-max()-Y
## 277                     fBodyAcc-max()-Z
## 278                     fBodyAcc-min()-X
## 279                     fBodyAcc-min()-Y
## 280                     fBodyAcc-min()-Z
## 281                       fBodyAcc-sma()
## 282                  fBodyAcc-energy()-X
## 283                  fBodyAcc-energy()-Y
## 284                  fBodyAcc-energy()-Z
## 285                     fBodyAcc-iqr()-X
## 286                     fBodyAcc-iqr()-Y
## 287                     fBodyAcc-iqr()-Z
## 288                 fBodyAcc-entropy()-X
## 289                 fBodyAcc-entropy()-Y
## 290                 fBodyAcc-entropy()-Z
## 291                   fBodyAcc-maxInds-X
## 292                   fBodyAcc-maxInds-Y
## 293                   fBodyAcc-maxInds-Z
## 294                fBodyAcc-meanFreq()-X
## 295                fBodyAcc-meanFreq()-Y
## 296                fBodyAcc-meanFreq()-Z
## 297                fBodyAcc-skewness()-X
## 298                fBodyAcc-kurtosis()-X
## 299                fBodyAcc-skewness()-Y
## 300                fBodyAcc-kurtosis()-Y
## 301                fBodyAcc-skewness()-Z
## 302                fBodyAcc-kurtosis()-Z
## 303           fBodyAcc-bandsEnergy()-1,8
## 304          fBodyAcc-bandsEnergy()-9,16
## 305         fBodyAcc-bandsEnergy()-17,24
## 306         fBodyAcc-bandsEnergy()-25,32
## 307         fBodyAcc-bandsEnergy()-33,40
## 308         fBodyAcc-bandsEnergy()-41,48
## 309         fBodyAcc-bandsEnergy()-49,56
## 310         fBodyAcc-bandsEnergy()-57,64
## 311          fBodyAcc-bandsEnergy()-1,16
## 312         fBodyAcc-bandsEnergy()-17,32
## 313         fBodyAcc-bandsEnergy()-33,48
## 314         fBodyAcc-bandsEnergy()-49,64
## 315          fBodyAcc-bandsEnergy()-1,24
## 316         fBodyAcc-bandsEnergy()-25,48
## 317           fBodyAcc-bandsEnergy()-1,8
## 318          fBodyAcc-bandsEnergy()-9,16
## 319         fBodyAcc-bandsEnergy()-17,24
## 320         fBodyAcc-bandsEnergy()-25,32
## 321         fBodyAcc-bandsEnergy()-33,40
## 322         fBodyAcc-bandsEnergy()-41,48
## 323         fBodyAcc-bandsEnergy()-49,56
## 324         fBodyAcc-bandsEnergy()-57,64
## 325          fBodyAcc-bandsEnergy()-1,16
## 326         fBodyAcc-bandsEnergy()-17,32
## 327         fBodyAcc-bandsEnergy()-33,48
## 328         fBodyAcc-bandsEnergy()-49,64
## 329          fBodyAcc-bandsEnergy()-1,24
## 330         fBodyAcc-bandsEnergy()-25,48
## 331           fBodyAcc-bandsEnergy()-1,8
## 332          fBodyAcc-bandsEnergy()-9,16
## 333         fBodyAcc-bandsEnergy()-17,24
## 334         fBodyAcc-bandsEnergy()-25,32
## 335         fBodyAcc-bandsEnergy()-33,40
## 336         fBodyAcc-bandsEnergy()-41,48
## 337         fBodyAcc-bandsEnergy()-49,56
## 338         fBodyAcc-bandsEnergy()-57,64
## 339          fBodyAcc-bandsEnergy()-1,16
## 340         fBodyAcc-bandsEnergy()-17,32
## 341         fBodyAcc-bandsEnergy()-33,48
## 342         fBodyAcc-bandsEnergy()-49,64
## 343          fBodyAcc-bandsEnergy()-1,24
## 344         fBodyAcc-bandsEnergy()-25,48
## 345                fBodyAccJerk-mean()-X
## 346                fBodyAccJerk-mean()-Y
## 347                fBodyAccJerk-mean()-Z
## 348                 fBodyAccJerk-std()-X
## 349                 fBodyAccJerk-std()-Y
## 350                 fBodyAccJerk-std()-Z
## 351                 fBodyAccJerk-mad()-X
## 352                 fBodyAccJerk-mad()-Y
## 353                 fBodyAccJerk-mad()-Z
## 354                 fBodyAccJerk-max()-X
## 355                 fBodyAccJerk-max()-Y
## 356                 fBodyAccJerk-max()-Z
## 357                 fBodyAccJerk-min()-X
## 358                 fBodyAccJerk-min()-Y
## 359                 fBodyAccJerk-min()-Z
## 360                   fBodyAccJerk-sma()
## 361              fBodyAccJerk-energy()-X
## 362              fBodyAccJerk-energy()-Y
## 363              fBodyAccJerk-energy()-Z
## 364                 fBodyAccJerk-iqr()-X
## 365                 fBodyAccJerk-iqr()-Y
## 366                 fBodyAccJerk-iqr()-Z
## 367             fBodyAccJerk-entropy()-X
## 368             fBodyAccJerk-entropy()-Y
## 369             fBodyAccJerk-entropy()-Z
## 370               fBodyAccJerk-maxInds-X
## 371               fBodyAccJerk-maxInds-Y
## 372               fBodyAccJerk-maxInds-Z
## 373            fBodyAccJerk-meanFreq()-X
## 374            fBodyAccJerk-meanFreq()-Y
## 375            fBodyAccJerk-meanFreq()-Z
## 376            fBodyAccJerk-skewness()-X
## 377            fBodyAccJerk-kurtosis()-X
## 378            fBodyAccJerk-skewness()-Y
## 379            fBodyAccJerk-kurtosis()-Y
## 380            fBodyAccJerk-skewness()-Z
## 381            fBodyAccJerk-kurtosis()-Z
## 382       fBodyAccJerk-bandsEnergy()-1,8
## 383      fBodyAccJerk-bandsEnergy()-9,16
## 384     fBodyAccJerk-bandsEnergy()-17,24
## 385     fBodyAccJerk-bandsEnergy()-25,32
## 386     fBodyAccJerk-bandsEnergy()-33,40
## 387     fBodyAccJerk-bandsEnergy()-41,48
## 388     fBodyAccJerk-bandsEnergy()-49,56
## 389     fBodyAccJerk-bandsEnergy()-57,64
## 390      fBodyAccJerk-bandsEnergy()-1,16
## 391     fBodyAccJerk-bandsEnergy()-17,32
## 392     fBodyAccJerk-bandsEnergy()-33,48
## 393     fBodyAccJerk-bandsEnergy()-49,64
## 394      fBodyAccJerk-bandsEnergy()-1,24
## 395     fBodyAccJerk-bandsEnergy()-25,48
## 396       fBodyAccJerk-bandsEnergy()-1,8
## 397      fBodyAccJerk-bandsEnergy()-9,16
## 398     fBodyAccJerk-bandsEnergy()-17,24
## 399     fBodyAccJerk-bandsEnergy()-25,32
## 400     fBodyAccJerk-bandsEnergy()-33,40
## 401     fBodyAccJerk-bandsEnergy()-41,48
## 402     fBodyAccJerk-bandsEnergy()-49,56
## 403     fBodyAccJerk-bandsEnergy()-57,64
## 404      fBodyAccJerk-bandsEnergy()-1,16
## 405     fBodyAccJerk-bandsEnergy()-17,32
## 406     fBodyAccJerk-bandsEnergy()-33,48
## 407     fBodyAccJerk-bandsEnergy()-49,64
## 408      fBodyAccJerk-bandsEnergy()-1,24
## 409     fBodyAccJerk-bandsEnergy()-25,48
## 410       fBodyAccJerk-bandsEnergy()-1,8
## 411      fBodyAccJerk-bandsEnergy()-9,16
## 412     fBodyAccJerk-bandsEnergy()-17,24
## 413     fBodyAccJerk-bandsEnergy()-25,32
## 414     fBodyAccJerk-bandsEnergy()-33,40
## 415     fBodyAccJerk-bandsEnergy()-41,48
## 416     fBodyAccJerk-bandsEnergy()-49,56
## 417     fBodyAccJerk-bandsEnergy()-57,64
## 418      fBodyAccJerk-bandsEnergy()-1,16
## 419     fBodyAccJerk-bandsEnergy()-17,32
## 420     fBodyAccJerk-bandsEnergy()-33,48
## 421     fBodyAccJerk-bandsEnergy()-49,64
## 422      fBodyAccJerk-bandsEnergy()-1,24
## 423     fBodyAccJerk-bandsEnergy()-25,48
## 424                   fBodyGyro-mean()-X
## 425                   fBodyGyro-mean()-Y
## 426                   fBodyGyro-mean()-Z
## 427                    fBodyGyro-std()-X
## 428                    fBodyGyro-std()-Y
## 429                    fBodyGyro-std()-Z
## 430                    fBodyGyro-mad()-X
## 431                    fBodyGyro-mad()-Y
## 432                    fBodyGyro-mad()-Z
## 433                    fBodyGyro-max()-X
## 434                    fBodyGyro-max()-Y
## 435                    fBodyGyro-max()-Z
## 436                    fBodyGyro-min()-X
## 437                    fBodyGyro-min()-Y
## 438                    fBodyGyro-min()-Z
## 439                      fBodyGyro-sma()
## 440                 fBodyGyro-energy()-X
## 441                 fBodyGyro-energy()-Y
## 442                 fBodyGyro-energy()-Z
## 443                    fBodyGyro-iqr()-X
## 444                    fBodyGyro-iqr()-Y
## 445                    fBodyGyro-iqr()-Z
## 446                fBodyGyro-entropy()-X
## 447                fBodyGyro-entropy()-Y
## 448                fBodyGyro-entropy()-Z
## 449                  fBodyGyro-maxInds-X
## 450                  fBodyGyro-maxInds-Y
## 451                  fBodyGyro-maxInds-Z
## 452               fBodyGyro-meanFreq()-X
## 453               fBodyGyro-meanFreq()-Y
## 454               fBodyGyro-meanFreq()-Z
## 455               fBodyGyro-skewness()-X
## 456               fBodyGyro-kurtosis()-X
## 457               fBodyGyro-skewness()-Y
## 458               fBodyGyro-kurtosis()-Y
## 459               fBodyGyro-skewness()-Z
## 460               fBodyGyro-kurtosis()-Z
## 461          fBodyGyro-bandsEnergy()-1,8
## 462         fBodyGyro-bandsEnergy()-9,16
## 463        fBodyGyro-bandsEnergy()-17,24
## 464        fBodyGyro-bandsEnergy()-25,32
## 465        fBodyGyro-bandsEnergy()-33,40
## 466        fBodyGyro-bandsEnergy()-41,48
## 467        fBodyGyro-bandsEnergy()-49,56
## 468        fBodyGyro-bandsEnergy()-57,64
## 469         fBodyGyro-bandsEnergy()-1,16
## 470        fBodyGyro-bandsEnergy()-17,32
## 471        fBodyGyro-bandsEnergy()-33,48
## 472        fBodyGyro-bandsEnergy()-49,64
## 473         fBodyGyro-bandsEnergy()-1,24
## 474        fBodyGyro-bandsEnergy()-25,48
## 475          fBodyGyro-bandsEnergy()-1,8
## 476         fBodyGyro-bandsEnergy()-9,16
## 477        fBodyGyro-bandsEnergy()-17,24
## 478        fBodyGyro-bandsEnergy()-25,32
## 479        fBodyGyro-bandsEnergy()-33,40
## 480        fBodyGyro-bandsEnergy()-41,48
## 481        fBodyGyro-bandsEnergy()-49,56
## 482        fBodyGyro-bandsEnergy()-57,64
## 483         fBodyGyro-bandsEnergy()-1,16
## 484        fBodyGyro-bandsEnergy()-17,32
## 485        fBodyGyro-bandsEnergy()-33,48
## 486        fBodyGyro-bandsEnergy()-49,64
## 487         fBodyGyro-bandsEnergy()-1,24
## 488        fBodyGyro-bandsEnergy()-25,48
## 489          fBodyGyro-bandsEnergy()-1,8
## 490         fBodyGyro-bandsEnergy()-9,16
## 491        fBodyGyro-bandsEnergy()-17,24
## 492        fBodyGyro-bandsEnergy()-25,32
## 493        fBodyGyro-bandsEnergy()-33,40
## 494        fBodyGyro-bandsEnergy()-41,48
## 495        fBodyGyro-bandsEnergy()-49,56
## 496        fBodyGyro-bandsEnergy()-57,64
## 497         fBodyGyro-bandsEnergy()-1,16
## 498        fBodyGyro-bandsEnergy()-17,32
## 499        fBodyGyro-bandsEnergy()-33,48
## 500        fBodyGyro-bandsEnergy()-49,64
## 501         fBodyGyro-bandsEnergy()-1,24
## 502        fBodyGyro-bandsEnergy()-25,48
## 503                   fBodyAccMag-mean()
## 504                    fBodyAccMag-std()
## 505                    fBodyAccMag-mad()
## 506                    fBodyAccMag-max()
## 507                    fBodyAccMag-min()
## 508                    fBodyAccMag-sma()
## 509                 fBodyAccMag-energy()
## 510                    fBodyAccMag-iqr()
## 511                fBodyAccMag-entropy()
## 512                  fBodyAccMag-maxInds
## 513               fBodyAccMag-meanFreq()
## 514               fBodyAccMag-skewness()
## 515               fBodyAccMag-kurtosis()
## 516           fBodyBodyAccJerkMag-mean()
## 517            fBodyBodyAccJerkMag-std()
## 518            fBodyBodyAccJerkMag-mad()
## 519            fBodyBodyAccJerkMag-max()
## 520            fBodyBodyAccJerkMag-min()
## 521            fBodyBodyAccJerkMag-sma()
## 522         fBodyBodyAccJerkMag-energy()
## 523            fBodyBodyAccJerkMag-iqr()
## 524        fBodyBodyAccJerkMag-entropy()
## 525          fBodyBodyAccJerkMag-maxInds
## 526       fBodyBodyAccJerkMag-meanFreq()
## 527       fBodyBodyAccJerkMag-skewness()
## 528       fBodyBodyAccJerkMag-kurtosis()
## 529              fBodyBodyGyroMag-mean()
## 530               fBodyBodyGyroMag-std()
## 531               fBodyBodyGyroMag-mad()
## 532               fBodyBodyGyroMag-max()
## 533               fBodyBodyGyroMag-min()
## 534               fBodyBodyGyroMag-sma()
## 535            fBodyBodyGyroMag-energy()
## 536               fBodyBodyGyroMag-iqr()
## 537           fBodyBodyGyroMag-entropy()
## 538             fBodyBodyGyroMag-maxInds
## 539          fBodyBodyGyroMag-meanFreq()
## 540          fBodyBodyGyroMag-skewness()
## 541          fBodyBodyGyroMag-kurtosis()
## 542          fBodyBodyGyroJerkMag-mean()
## 543           fBodyBodyGyroJerkMag-std()
## 544           fBodyBodyGyroJerkMag-mad()
## 545           fBodyBodyGyroJerkMag-max()
## 546           fBodyBodyGyroJerkMag-min()
## 547           fBodyBodyGyroJerkMag-sma()
## 548        fBodyBodyGyroJerkMag-energy()
## 549           fBodyBodyGyroJerkMag-iqr()
## 550       fBodyBodyGyroJerkMag-entropy()
## 551         fBodyBodyGyroJerkMag-maxInds
## 552      fBodyBodyGyroJerkMag-meanFreq()
## 553      fBodyBodyGyroJerkMag-skewness()
## 554      fBodyBodyGyroJerkMag-kurtosis()
## 555          angle(tBodyAccMean,gravity)
## 556 angle(tBodyAccJerkMean),gravityMean)
## 557     angle(tBodyGyroMean,gravityMean)
## 558 angle(tBodyGyroJerkMean,gravityMean)
## 559                 angle(X,gravityMean)
## 560                 angle(Y,gravityMean)
## 561                 angle(Z,gravityMean)
```


The following list of activities were performed:

```r
activities <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
activities[2]
```

```
##                   V2
## 1            WALKING
## 2   WALKING_UPSTAIRS
## 3 WALKING_DOWNSTAIRS
## 4            SITTING
## 5           STANDING
## 6             LAYING
```


## Transformations to clean up the data 

The following are the steps taken to clean up the data:


```
## Warning: package 'data.table' was built under R version 3.1.3
```

```
## Warning: package 'dplyr' was built under R version 3.1.3
```

```
## 
## Attaching package: 'dplyr'
## 
## The following objects are masked from 'package:data.table':
## 
##     between, last
## 
## The following objects are masked from 'package:stats':
## 
##     filter, lag
## 
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

#### 1. Merge the training and the test sets to create one data set.

Reading all train data

```r
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
trainX <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
trainY <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
```

Reading all test data

```r
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
testX <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
testY <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
```

Merging train and test data for each item

```r
allSubject <- rbind(trainSubject, testSubject)
allX <- rbind(trainX, testX)
allY <- rbind(trainY, testY)
```

Loading the feature (X) names and activity (Y) labels and using the second 
column of the features data frame as the feature labels

```r
features <- read.table("UCI HAR Dataset/features.txt")
labelX <- t(features[2])
```

Setting all the column labels

```r
colnames(allX) <- labelX
colnames(allY) <- "ActivityID"
colnames(allSubject) <- "SubjectID"
```

The combined dataset

```r
combinedData <- cbind(allSubject,allX,allY)
```

The dimenstion of the combined data:

```r
dim(combinedData)
```

```
## [1] 10299   563
```

#### 2. Extract only the measurements on the mean and standard deviation for each measurement. 

First separate the features with mean and std. dev in their name

```r
cnames <- names(allX)
extCols <- grep(".*Mean.*|.*Std.*", cnames, , ignore.case=TRUE)
extX <- allX[,extCols]
```

Subset of the data

```r
subsetData <- cbind(allSubject, extX, allY)
```

The dimenstion of the extracted data:

```r
dim(subsetData)
```

```
## [1] 10299    88
```

#### 3. Use descriptive activity names to name the activities in the data set 

Loading the activity labels included in the dataset

```r
activities <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
nactivity <- nrow(activities)
activities[2]
```

```
##                   V2
## 1            WALKING
## 2   WALKING_UPSTAIRS
## 3 WALKING_DOWNSTAIRS
## 4            SITTING
## 5           STANDING
## 6             LAYING
```

Replacing the Activity IDs from the dataset with actual activity labels.

```r
tempActIDs <- as.character(subsetData$ActivityID)
for (i in 1:nactivity){
    tempActIDs[tempActIDs[] == i] <- as.character(activities[i,2])
}
subsetData$ActivityID <- as.factor(tempActIDs)
```


Changing the name of the column from ActivityID to Activity

```r
ncols <- ncol(subsetData)
colnames(subsetData)[ncols] <- "Activity"
```

The different types of activities captured as a factor of the Activity column

```r
levels(subsetData$Activity)
```

```
## [1] "LAYING"             "SITTING"            "STANDING"          
## [4] "WALKING"            "WALKING_DOWNSTAIRS" "WALKING_UPSTAIRS"
```

#### 4. Appropriately labels the data set with descriptive variable names.  

Original labels of the features:

```r
names(subsetData)
```

```
##  [1] "SubjectID"                           
##  [2] "tBodyAcc-mean()-X"                   
##  [3] "tBodyAcc-mean()-Y"                   
##  [4] "tBodyAcc-mean()-Z"                   
##  [5] "tBodyAcc-std()-X"                    
##  [6] "tBodyAcc-std()-Y"                    
##  [7] "tBodyAcc-std()-Z"                    
##  [8] "tGravityAcc-mean()-X"                
##  [9] "tGravityAcc-mean()-Y"                
## [10] "tGravityAcc-mean()-Z"                
## [11] "tGravityAcc-std()-X"                 
## [12] "tGravityAcc-std()-Y"                 
## [13] "tGravityAcc-std()-Z"                 
## [14] "tBodyAccJerk-mean()-X"               
## [15] "tBodyAccJerk-mean()-Y"               
## [16] "tBodyAccJerk-mean()-Z"               
## [17] "tBodyAccJerk-std()-X"                
## [18] "tBodyAccJerk-std()-Y"                
## [19] "tBodyAccJerk-std()-Z"                
## [20] "tBodyGyro-mean()-X"                  
## [21] "tBodyGyro-mean()-Y"                  
## [22] "tBodyGyro-mean()-Z"                  
## [23] "tBodyGyro-std()-X"                   
## [24] "tBodyGyro-std()-Y"                   
## [25] "tBodyGyro-std()-Z"                   
## [26] "tBodyGyroJerk-mean()-X"              
## [27] "tBodyGyroJerk-mean()-Y"              
## [28] "tBodyGyroJerk-mean()-Z"              
## [29] "tBodyGyroJerk-std()-X"               
## [30] "tBodyGyroJerk-std()-Y"               
## [31] "tBodyGyroJerk-std()-Z"               
## [32] "tBodyAccMag-mean()"                  
## [33] "tBodyAccMag-std()"                   
## [34] "tGravityAccMag-mean()"               
## [35] "tGravityAccMag-std()"                
## [36] "tBodyAccJerkMag-mean()"              
## [37] "tBodyAccJerkMag-std()"               
## [38] "tBodyGyroMag-mean()"                 
## [39] "tBodyGyroMag-std()"                  
## [40] "tBodyGyroJerkMag-mean()"             
## [41] "tBodyGyroJerkMag-std()"              
## [42] "fBodyAcc-mean()-X"                   
## [43] "fBodyAcc-mean()-Y"                   
## [44] "fBodyAcc-mean()-Z"                   
## [45] "fBodyAcc-std()-X"                    
## [46] "fBodyAcc-std()-Y"                    
## [47] "fBodyAcc-std()-Z"                    
## [48] "fBodyAcc-meanFreq()-X"               
## [49] "fBodyAcc-meanFreq()-Y"               
## [50] "fBodyAcc-meanFreq()-Z"               
## [51] "fBodyAccJerk-mean()-X"               
## [52] "fBodyAccJerk-mean()-Y"               
## [53] "fBodyAccJerk-mean()-Z"               
## [54] "fBodyAccJerk-std()-X"                
## [55] "fBodyAccJerk-std()-Y"                
## [56] "fBodyAccJerk-std()-Z"                
## [57] "fBodyAccJerk-meanFreq()-X"           
## [58] "fBodyAccJerk-meanFreq()-Y"           
## [59] "fBodyAccJerk-meanFreq()-Z"           
## [60] "fBodyGyro-mean()-X"                  
## [61] "fBodyGyro-mean()-Y"                  
## [62] "fBodyGyro-mean()-Z"                  
## [63] "fBodyGyro-std()-X"                   
## [64] "fBodyGyro-std()-Y"                   
## [65] "fBodyGyro-std()-Z"                   
## [66] "fBodyGyro-meanFreq()-X"              
## [67] "fBodyGyro-meanFreq()-Y"              
## [68] "fBodyGyro-meanFreq()-Z"              
## [69] "fBodyAccMag-mean()"                  
## [70] "fBodyAccMag-std()"                   
## [71] "fBodyAccMag-meanFreq()"              
## [72] "fBodyBodyAccJerkMag-mean()"          
## [73] "fBodyBodyAccJerkMag-std()"           
## [74] "fBodyBodyAccJerkMag-meanFreq()"      
## [75] "fBodyBodyGyroMag-mean()"             
## [76] "fBodyBodyGyroMag-std()"              
## [77] "fBodyBodyGyroMag-meanFreq()"         
## [78] "fBodyBodyGyroJerkMag-mean()"         
## [79] "fBodyBodyGyroJerkMag-std()"          
## [80] "fBodyBodyGyroJerkMag-meanFreq()"     
## [81] "angle(tBodyAccMean,gravity)"         
## [82] "angle(tBodyAccJerkMean),gravityMean)"
## [83] "angle(tBodyGyroMean,gravityMean)"    
## [84] "angle(tBodyGyroJerkMean,gravityMean)"
## [85] "angle(X,gravityMean)"                
## [86] "angle(Y,gravityMean)"                
## [87] "angle(Z,gravityMean)"                
## [88] "Activity"
```

Replacing "t" with "Time"

```r
names(subsetData) <- gsub("^t", "Time", names(subsetData))
```

Replacing "f" with "Freq"

```r
names(subsetData) <- gsub("^f", "Freq", names(subsetData))
```

Replacing "Mag" with "Magnitude"

```r
names(subsetData) <- gsub("Mag", "Magnitude", names(subsetData))
```

Replacing "BodyBody" with "Body"

```r
names(subsetData) <- gsub("BodyBody", "Body", names(subsetData))
```

Replacing "Acc" with "Accelerometer"

```r
names(subsetData) <- gsub("Acc", "Accelerometer", names(subsetData))
```

Replacing "tBody" with "TimeBody"

```r
names(subsetData) <- gsub("tBody", "TimeBody", names(subsetData))
```

Updated labels of the features:

```r
names(subsetData)
```

```
##  [1] "SubjectID"                                        
##  [2] "TimeBodyAccelerometer-mean()-X"                   
##  [3] "TimeBodyAccelerometer-mean()-Y"                   
##  [4] "TimeBodyAccelerometer-mean()-Z"                   
##  [5] "TimeBodyAccelerometer-std()-X"                    
##  [6] "TimeBodyAccelerometer-std()-Y"                    
##  [7] "TimeBodyAccelerometer-std()-Z"                    
##  [8] "TimeGravityAccelerometer-mean()-X"                
##  [9] "TimeGravityAccelerometer-mean()-Y"                
## [10] "TimeGravityAccelerometer-mean()-Z"                
## [11] "TimeGravityAccelerometer-std()-X"                 
## [12] "TimeGravityAccelerometer-std()-Y"                 
## [13] "TimeGravityAccelerometer-std()-Z"                 
## [14] "TimeBodyAccelerometerJerk-mean()-X"               
## [15] "TimeBodyAccelerometerJerk-mean()-Y"               
## [16] "TimeBodyAccelerometerJerk-mean()-Z"               
## [17] "TimeBodyAccelerometerJerk-std()-X"                
## [18] "TimeBodyAccelerometerJerk-std()-Y"                
## [19] "TimeBodyAccelerometerJerk-std()-Z"                
## [20] "TimeBodyGyro-mean()-X"                            
## [21] "TimeBodyGyro-mean()-Y"                            
## [22] "TimeBodyGyro-mean()-Z"                            
## [23] "TimeBodyGyro-std()-X"                             
## [24] "TimeBodyGyro-std()-Y"                             
## [25] "TimeBodyGyro-std()-Z"                             
## [26] "TimeBodyGyroJerk-mean()-X"                        
## [27] "TimeBodyGyroJerk-mean()-Y"                        
## [28] "TimeBodyGyroJerk-mean()-Z"                        
## [29] "TimeBodyGyroJerk-std()-X"                         
## [30] "TimeBodyGyroJerk-std()-Y"                         
## [31] "TimeBodyGyroJerk-std()-Z"                         
## [32] "TimeBodyAccelerometerMagnitude-mean()"            
## [33] "TimeBodyAccelerometerMagnitude-std()"             
## [34] "TimeGravityAccelerometerMagnitude-mean()"         
## [35] "TimeGravityAccelerometerMagnitude-std()"          
## [36] "TimeBodyAccelerometerJerkMagnitude-mean()"        
## [37] "TimeBodyAccelerometerJerkMagnitude-std()"         
## [38] "TimeBodyGyroMagnitude-mean()"                     
## [39] "TimeBodyGyroMagnitude-std()"                      
## [40] "TimeBodyGyroJerkMagnitude-mean()"                 
## [41] "TimeBodyGyroJerkMagnitude-std()"                  
## [42] "FreqBodyAccelerometer-mean()-X"                   
## [43] "FreqBodyAccelerometer-mean()-Y"                   
## [44] "FreqBodyAccelerometer-mean()-Z"                   
## [45] "FreqBodyAccelerometer-std()-X"                    
## [46] "FreqBodyAccelerometer-std()-Y"                    
## [47] "FreqBodyAccelerometer-std()-Z"                    
## [48] "FreqBodyAccelerometer-meanFreq()-X"               
## [49] "FreqBodyAccelerometer-meanFreq()-Y"               
## [50] "FreqBodyAccelerometer-meanFreq()-Z"               
## [51] "FreqBodyAccelerometerJerk-mean()-X"               
## [52] "FreqBodyAccelerometerJerk-mean()-Y"               
## [53] "FreqBodyAccelerometerJerk-mean()-Z"               
## [54] "FreqBodyAccelerometerJerk-std()-X"                
## [55] "FreqBodyAccelerometerJerk-std()-Y"                
## [56] "FreqBodyAccelerometerJerk-std()-Z"                
## [57] "FreqBodyAccelerometerJerk-meanFreq()-X"           
## [58] "FreqBodyAccelerometerJerk-meanFreq()-Y"           
## [59] "FreqBodyAccelerometerJerk-meanFreq()-Z"           
## [60] "FreqBodyGyro-mean()-X"                            
## [61] "FreqBodyGyro-mean()-Y"                            
## [62] "FreqBodyGyro-mean()-Z"                            
## [63] "FreqBodyGyro-std()-X"                             
## [64] "FreqBodyGyro-std()-Y"                             
## [65] "FreqBodyGyro-std()-Z"                             
## [66] "FreqBodyGyro-meanFreq()-X"                        
## [67] "FreqBodyGyro-meanFreq()-Y"                        
## [68] "FreqBodyGyro-meanFreq()-Z"                        
## [69] "FreqBodyAccelerometerMagnitude-mean()"            
## [70] "FreqBodyAccelerometerMagnitude-std()"             
## [71] "FreqBodyAccelerometerMagnitude-meanFreq()"        
## [72] "FreqBodyAccelerometerJerkMagnitude-mean()"        
## [73] "FreqBodyAccelerometerJerkMagnitude-std()"         
## [74] "FreqBodyAccelerometerJerkMagnitude-meanFreq()"    
## [75] "FreqBodyGyroMagnitude-mean()"                     
## [76] "FreqBodyGyroMagnitude-std()"                      
## [77] "FreqBodyGyroMagnitude-meanFreq()"                 
## [78] "FreqBodyGyroJerkMagnitude-mean()"                 
## [79] "FreqBodyGyroJerkMagnitude-std()"                  
## [80] "FreqBodyGyroJerkMagnitude-meanFreq()"             
## [81] "angle(TimeBodyAccelerometerMean,gravity)"         
## [82] "angle(TimeBodyAccelerometerJerkMean),gravityMean)"
## [83] "angle(TimeBodyGyroMean,gravityMean)"              
## [84] "angle(TimeBodyGyroJerkMean,gravityMean)"          
## [85] "angle(X,gravityMean)"                             
## [86] "angle(Y,gravityMean)"                             
## [87] "angle(Z,gravityMean)"                             
## [88] "Activity"
```

#### 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject. 


```r
tidyData<-aggregate(. ~SubjectID + Activity, subsetData, mean)
tidyData<-tidyData[order(tidyData$SubjectID,tidyData$Activity),]
head(tidyData, n=10)
```

```
##     SubjectID           Activity TimeBodyAccelerometer-mean()-X
## 1           1             LAYING                      0.2215982
## 31          1            SITTING                      0.2612376
## 61          1           STANDING                      0.2789176
## 91          1            WALKING                      0.2773308
## 121         1 WALKING_DOWNSTAIRS                      0.2891883
## 151         1   WALKING_UPSTAIRS                      0.2554617
## 2           2             LAYING                      0.2813734
## 32          2            SITTING                      0.2770874
## 62          2           STANDING                      0.2779115
## 92          2            WALKING                      0.2764266
##     TimeBodyAccelerometer-mean()-Y TimeBodyAccelerometer-mean()-Z
## 1                     -0.040513953                     -0.1132036
## 31                    -0.001308288                     -0.1045442
## 61                    -0.016137590                     -0.1106018
## 91                    -0.017383819                     -0.1111481
## 121                   -0.009918505                     -0.1075662
## 151                   -0.023953149                     -0.0973020
## 2                     -0.018158740                     -0.1072456
## 32                    -0.015687994                     -0.1092183
## 62                    -0.018420827                     -0.1059085
## 92                    -0.018594920                     -0.1055004
##     TimeBodyAccelerometer-std()-X TimeBodyAccelerometer-std()-Y
## 1                     -0.92805647                  -0.836827406
## 31                    -0.97722901                  -0.922618642
## 61                    -0.99575990                  -0.973190056
## 91                    -0.28374026                   0.114461337
## 121                    0.03003534                  -0.031935943
## 151                   -0.35470803                  -0.002320265
## 2                     -0.97405946                  -0.980277399
## 32                    -0.98682228                  -0.950704499
## 62                    -0.98727189                  -0.957304989
## 92                    -0.42364284                  -0.078091253
##     TimeBodyAccelerometer-std()-Z TimeGravityAccelerometer-mean()-X
## 1                     -0.82606140                        -0.2488818
## 31                    -0.93958629                         0.8315099
## 61                    -0.97977588                         0.9429520
## 91                    -0.26002790                         0.9352232
## 121                   -0.23043421                         0.9318744
## 151                   -0.01947924                         0.8933511
## 2                     -0.98423330                        -0.5097542
## 32                    -0.95982817                         0.9404773
## 62                    -0.94974185                         0.8969286
## 92                    -0.42525752                         0.9130173
##     TimeGravityAccelerometer-mean()-Y TimeGravityAccelerometer-mean()-Z
## 1                           0.7055498                        0.44581772
## 31                          0.2044116                        0.33204370
## 61                         -0.2729838                        0.01349058
## 91                         -0.2821650                       -0.06810286
## 121                        -0.2666103                       -0.06211996
## 151                        -0.3621534                       -0.07540294
## 2                           0.7525366                        0.64683488
## 32                         -0.1056300                        0.19872677
## 62                         -0.3700627                        0.12974716
## 92                         -0.3466071                        0.08472709
##     TimeGravityAccelerometer-std()-X TimeGravityAccelerometer-std()-Y
## 1                         -0.8968300                       -0.9077200
## 31                        -0.9684571                       -0.9355171
## 61                        -0.9937630                       -0.9812260
## 91                        -0.9766096                       -0.9713060
## 121                       -0.9505598                       -0.9370187
## 151                       -0.9563670                       -0.9528492
## 2                         -0.9590144                       -0.9882119
## 32                        -0.9799888                       -0.9567503
## 62                        -0.9866858                       -0.9741944
## 92                        -0.9726932                       -0.9721169
##     TimeGravityAccelerometer-std()-Z TimeBodyAccelerometerJerk-mean()-X
## 1                         -0.8523663                         0.08108653
## 31                        -0.9490409                         0.07748252
## 61                        -0.9763241                         0.07537665
## 91                        -0.9477172                         0.07404163
## 121                       -0.8959397                         0.05415532
## 151                       -0.9123794                         0.10137273
## 2                         -0.9842304                         0.08259725
## 32                        -0.9544159                         0.07225644
## 62                        -0.9459271                         0.07475886
## 92                        -0.9720728                         0.06180807
##     TimeBodyAccelerometerJerk-mean()-Y TimeBodyAccelerometerJerk-mean()-Z
## 1                         0.0038382040                        0.010834236
## 31                       -0.0006191028                       -0.003367792
## 61                        0.0079757309                       -0.003685250
## 91                        0.0282721096                       -0.004168406
## 121                       0.0296504490                       -0.010971973
## 151                       0.0194863076                       -0.045562545
## 2                         0.0122547885                       -0.001802649
## 32                        0.0116954511                        0.007605469
## 62                        0.0103291775                       -0.008371588
## 92                        0.0182492679                        0.007895337
##     TimeBodyAccelerometerJerk-std()-X TimeBodyAccelerometerJerk-std()-Y
## 1                         -0.95848211                       -0.92414927
## 31                        -0.98643071                       -0.98137197
## 61                        -0.99460454                       -0.98564873
## 91                        -0.11361560                        0.06700250
## 121                       -0.01228386                       -0.10160139
## 151                       -0.44684389                       -0.37827443
## 2                         -0.98587217                       -0.98317254
## 32                        -0.98805585                       -0.97798396
## 62                        -0.98108572                       -0.97105944
## 92                        -0.27753046                       -0.01660224
##     TimeBodyAccelerometerJerk-std()-Z TimeBodyGyro-mean()-X
## 1                          -0.9548551           -0.01655309
## 31                         -0.9879108           -0.04535006
## 61                         -0.9922512           -0.02398773
## 91                         -0.5026998           -0.04183096
## 121                        -0.3457350           -0.03507819
## 151                        -0.7065935            0.05054938
## 2                          -0.9884420           -0.01847661
## 32                         -0.9875182           -0.04547066
## 62                         -0.9828414           -0.02386239
## 92                         -0.5860904           -0.05302582
##     TimeBodyGyro-mean()-Y TimeBodyGyro-mean()-Z TimeBodyGyro-std()-X
## 1             -0.06448612            0.14868944           -0.8735439
## 31            -0.09192415            0.06293138           -0.9772113
## 61            -0.05939722            0.07480075           -0.9871919
## 91            -0.06953005            0.08494482           -0.4735355
## 121           -0.09093713            0.09008501           -0.4580305
## 151           -0.16617002            0.05835955           -0.5448711
## 2             -0.11180082            0.14488285           -0.9882752
## 32            -0.05992868            0.04122775           -0.9857420
## 62            -0.08203966            0.08783517           -0.9729986
## 92            -0.04823823            0.08283366           -0.5615503
##     TimeBodyGyro-std()-Y TimeBodyGyro-std()-Z TimeBodyGyroJerk-mean()-X
## 1           -0.951090440           -0.9082847               -0.10727095
## 31          -0.966473895           -0.9414259               -0.09367938
## 61          -0.987734440           -0.9806456               -0.09960921
## 91          -0.054607769           -0.3442666               -0.08999754
## 121         -0.126349195           -0.1247025               -0.07395920
## 151          0.004105184           -0.5071687               -0.12223277
## 2           -0.982291609           -0.9603066               -0.10197413
## 32          -0.978919527           -0.9598037               -0.09363284
## 62          -0.971441996           -0.9648567               -0.10556216
## 92          -0.538453668           -0.4810855               -0.08188334
##     TimeBodyGyroJerk-mean()-Y TimeBodyGyroJerk-mean()-Z
## 1                 -0.04151729               -0.07405012
## 31                -0.04021181               -0.04670263
## 61                -0.04406279               -0.04895055
## 91                -0.03984287               -0.04613093
## 121               -0.04399028               -0.02704611
## 151               -0.04214859               -0.04071255
## 2                 -0.03585902               -0.07017830
## 32                -0.04156020               -0.04358510
## 62                -0.04224195               -0.05465395
## 92                -0.05382994               -0.05149392
##     TimeBodyGyroJerk-std()-X TimeBodyGyroJerk-std()-Y
## 1                 -0.9186085               -0.9679072
## 31                -0.9917316               -0.9895181
## 61                -0.9929451               -0.9951379
## 91                -0.2074219               -0.3044685
## 121               -0.4870273               -0.2388248
## 151               -0.6147865               -0.6016967
## 2                 -0.9932358               -0.9895675
## 32                -0.9897090               -0.9908896
## 62                -0.9793240               -0.9834473
## 92                -0.3895498               -0.6341404
##     TimeBodyGyroJerk-std()-Z TimeBodyAccelerometerMagnitude-mean()
## 1                 -0.9577902                           -0.84192915
## 31                -0.9879358                           -0.94853679
## 61                -0.9921085                           -0.98427821
## 91                -0.4042555                           -0.13697118
## 121               -0.2687615                            0.02718829
## 151               -0.6063320                           -0.12992763
## 2                 -0.9880358                           -0.97743549
## 32                -0.9855423                           -0.96789362
## 62                -0.9736101                           -0.96587518
## 92                -0.4354927                           -0.29040759
##     TimeBodyAccelerometerMagnitude-std()
## 1                            -0.79514486
## 31                           -0.92707842
## 61                           -0.98194293
## 91                           -0.21968865
## 121                           0.01988435
## 151                          -0.32497093
## 2                            -0.97287391
## 32                           -0.95308144
## 62                           -0.95787497
## 92                           -0.42254417
##     TimeGravityAccelerometerMagnitude-mean()
## 1                                -0.84192915
## 31                               -0.94853679
## 61                               -0.98427821
## 91                               -0.13697118
## 121                               0.02718829
## 151                              -0.12992763
## 2                                -0.97743549
## 32                               -0.96789362
## 62                               -0.96587518
## 92                               -0.29040759
##     TimeGravityAccelerometerMagnitude-std()
## 1                               -0.79514486
## 31                              -0.92707842
## 61                              -0.98194293
## 91                              -0.21968865
## 121                              0.01988435
## 151                             -0.32497093
## 2                               -0.97287391
## 32                              -0.95308144
## 62                              -0.95787497
## 92                              -0.42254417
##     TimeBodyAccelerometerJerkMagnitude-mean()
## 1                                 -0.95439626
## 31                                -0.98736420
## 61                                -0.99236779
## 91                                -0.14142881
## 121                               -0.08944748
## 151                               -0.46650345
## 2                                 -0.98774170
## 32                                -0.98677471
## 62                                -0.98048908
## 92                                -0.28142415
##     TimeBodyAccelerometerJerkMagnitude-std() TimeBodyGyroMagnitude-mean()
## 1                                -0.92824563                  -0.87475955
## 31                               -0.98412002                  -0.93089249
## 61                               -0.99309621                  -0.97649379
## 91                               -0.07447175                  -0.16097955
## 121                              -0.02578772                  -0.07574125
## 151                              -0.47899162                  -0.12673559
## 2                                -0.98551808                  -0.95001157
## 32                               -0.98447587                  -0.94603509
## 62                               -0.97667528                  -0.96346634
## 92                               -0.16415099                  -0.44654909
##     TimeBodyGyroMagnitude-std() TimeBodyGyroJerkMagnitude-mean()
## 1                    -0.8190102                       -0.9634610
## 31                   -0.9345318                       -0.9919763
## 61                   -0.9786900                       -0.9949668
## 91                   -0.1869784                       -0.2987037
## 121                  -0.2257244                       -0.2954638
## 151                  -0.1486193                       -0.5948829
## 2                    -0.9611641                       -0.9917671
## 32                   -0.9613136                       -0.9910815
## 62                   -0.9539434                       -0.9839519
## 92                   -0.5530199                       -0.5479120
##     TimeBodyGyroJerkMagnitude-std() FreqBodyAccelerometer-mean()-X
## 1                        -0.9358410                    -0.93909905
## 31                       -0.9883087                    -0.97964124
## 61                       -0.9947332                    -0.99524993
## 91                       -0.3253249                    -0.20279431
## 121                      -0.3065106                     0.03822918
## 151                      -0.6485530                    -0.40432178
## 2                        -0.9897181                    -0.97672506
## 32                       -0.9895949                    -0.98580384
## 62                       -0.9772044                    -0.98394674
## 92                       -0.5577982                    -0.34604816
##     FreqBodyAccelerometer-mean()-Y FreqBodyAccelerometer-mean()-Z
## 1                     -0.867065205                     -0.8826669
## 31                    -0.944084550                     -0.9591849
## 61                    -0.977070848                     -0.9852971
## 91                     0.089712726                     -0.3315601
## 121                    0.001549908                     -0.2255745
## 151                   -0.190976721                     -0.4333497
## 2                     -0.979800878                     -0.9843810
## 32                    -0.957343498                     -0.9701622
## 62                    -0.959871697                     -0.9624712
## 92                    -0.021904810                     -0.4538064
##     FreqBodyAccelerometer-std()-X FreqBodyAccelerometer-std()-Y
## 1                     -0.92443743                   -0.83362556
## 31                    -0.97641231                   -0.91727501
## 61                    -0.99602835                   -0.97229310
## 91                    -0.31913472                    0.05604001
## 121                    0.02433084                   -0.11296374
## 151                   -0.33742819                    0.02176951
## 2                     -0.97324648                   -0.98102511
## 32                    -0.98736209                   -0.95007375
## 62                    -0.98905647                   -0.95790884
## 92                    -0.45765138                   -0.16921969
##     FreqBodyAccelerometer-std()-Z FreqBodyAccelerometer-meanFreq()-X
## 1                     -0.81289156                        -0.15879267
## 31                    -0.93446956                        -0.04951360
## 61                    -0.97793726                         0.08651536
## 91                    -0.27968675                        -0.20754837
## 121                   -0.29792789                        -0.30739520
## 151                    0.08595655                        -0.41873500
## 2                     -0.98479218                        -0.14648279
## 32                    -0.95686286                         0.08519282
## 62                    -0.94643358                         0.10851918
## 92                    -0.45522215                        -0.14579549
##     FreqBodyAccelerometer-meanFreq()-Y FreqBodyAccelerometer-meanFreq()-Z
## 1                           0.09753484                         0.08943766
## 31                          0.07594608                         0.23882987
## 61                          0.11747895                         0.24485859
## 91                          0.11309365                         0.04972652
## 121                         0.06322008                         0.29432270
## 151                        -0.16069721                        -0.52011479
## 2                           0.25728947                         0.40253255
## 32                          0.15019396                         0.09606468
## 62                          0.06233781                         0.10446250
## 92                          0.19858647                         0.06889952
##     FreqBodyAccelerometerJerk-mean()-X FreqBodyAccelerometerJerk-mean()-Y
## 1                          -0.95707388                        -0.92246261
## 31                         -0.98659702                        -0.98157947
## 61                         -0.99463080                        -0.98541870
## 91                         -0.17054696                        -0.03522552
## 121                        -0.02766387                        -0.12866716
## 151                        -0.47987525                        -0.41344459
## 2                          -0.98581363                        -0.98276825
## 32                         -0.98784879                        -0.97713970
## 62                         -0.98097324                        -0.97085134
## 92                         -0.30461532                        -0.07876408
##     FreqBodyAccelerometerJerk-mean()-Z FreqBodyAccelerometerJerk-std()-X
## 1                           -0.9480609                        -0.9641607
## 31                          -0.9860531                        -0.9874930
## 61                          -0.9907522                        -0.9950738
## 91                          -0.4689992                        -0.1335866
## 121                         -0.2883347                        -0.0863279
## 151                         -0.6854744                        -0.4619070
## 2                           -0.9861971                        -0.9872503
## 32                          -0.9851291                        -0.9894591
## 62                          -0.9797752                        -0.9830079
## 92                          -0.5549567                        -0.3143131
##     FreqBodyAccelerometerJerk-std()-Y FreqBodyAccelerometerJerk-std()-Z
## 1                         -0.93221787                        -0.9605870
## 31                        -0.98251391                        -0.9883392
## 61                        -0.98701823                        -0.9923498
## 91                         0.10673986                        -0.5347134
## 121                       -0.13458001                        -0.4017215
## 151                       -0.38177707                        -0.7260402
## 2                         -0.98498739                        -0.9893454
## 32                        -0.98080423                        -0.9885708
## 62                        -0.97352024                        -0.9845999
## 92                        -0.01533295                        -0.6158982
##     FreqBodyAccelerometerJerk-meanFreq()-X
## 1                               0.13241909
## 31                              0.25661082
## 61                              0.31418294
## 91                             -0.20926197
## 121                            -0.25316434
## 151                            -0.37702313
## 2                               0.15980833
## 32                              0.30554682
## 62                              0.33144928
## 92                             -0.07271016
##     FreqBodyAccelerometerJerk-meanFreq()-Y
## 1                               0.02451362
## 31                              0.04754378
## 61                              0.03916190
## 91                             -0.38623714
## 121                            -0.33758970
## 151                            -0.50949553
## 2                               0.12120642
## 32                              0.02624486
## 62                             -0.05693683
## 92                             -0.26357402
##     FreqBodyAccelerometerJerk-meanFreq()-Z FreqBodyGyro-mean()-X
## 1                              0.024387945            -0.8502492
## 31                             0.092392003            -0.9761615
## 61                             0.138581479            -0.9863868
## 91                            -0.185530281            -0.3390322
## 121                            0.009372239            -0.3524496
## 151                           -0.551104284            -0.4926117
## 2                              0.190558218            -0.9864311
## 32                             0.092903063            -0.9826214
## 62                             0.039649818            -0.9670371
## 92                            -0.254846439            -0.4297135
##     FreqBodyGyro-mean()-Y FreqBodyGyro-mean()-Z FreqBodyGyro-std()-X
## 1             -0.95219149           -0.90930272           -0.8822965
## 31            -0.97583859           -0.95131554           -0.9779042
## 61            -0.98898446           -0.98077312           -0.9874971
## 91            -0.10305942           -0.25594094           -0.5166919
## 121           -0.05570225           -0.03186943           -0.4954225
## 151           -0.31947461           -0.45359721           -0.5658925
## 2             -0.98332164           -0.96267189           -0.9888607
## 32            -0.98210092           -0.95981482           -0.9868085
## 62            -0.97257615           -0.96062770           -0.9749881
## 92            -0.55477211           -0.39665991           -0.6040530
##     FreqBodyGyro-std()-Y FreqBodyGyro-std()-Z FreqBodyGyro-meanFreq()-X
## 1            -0.95123205           -0.9165825              -0.003546796
## 31           -0.96234504           -0.9439178               0.189153021
## 61           -0.98710773           -0.9823453              -0.120293021
## 91           -0.03350816           -0.4365622               0.014784499
## 121          -0.18141473           -0.2384436              -0.100453729
## 151           0.15153891           -0.5717078              -0.187450248
## 2            -0.98191062           -0.9631742               0.102611319
## 32           -0.97735619           -0.9635227               0.130523121
## 62           -0.97103605           -0.9697543              -0.107416045
## 92           -0.53304695           -0.5598566               0.007279680
##     FreqBodyGyro-meanFreq()-Y FreqBodyGyro-meanFreq()-Z
## 1                 -0.09152913              0.0104581257
## 31                 0.06312707             -0.0297839207
## 61                -0.04471920              0.1006076351
## 91                -0.06577462              0.0007733216
## 121                0.08255115             -0.0756762068
## 151               -0.47357479             -0.1333739043
## 2                  0.04228067              0.0552985986
## 32                -0.19214274              0.0409472349
## 62                -0.17116037              0.0002268106
## 92                -0.04270093              0.1397521153
##     FreqBodyAccelerometerMagnitude-mean()
## 1                             -0.86176765
## 31                            -0.94778292
## 61                            -0.98535636
## 91                            -0.12862345
## 121                            0.09658453
## 151                           -0.35239594
## 2                             -0.97511020
## 32                            -0.96127375
## 62                            -0.96405217
## 92                            -0.32428943
##     FreqBodyAccelerometerMagnitude-std()
## 1                             -0.7983009
## 31                            -0.9284448
## 61                            -0.9823138
## 91                            -0.3980326
## 121                           -0.1865303
## 151                           -0.4162601
## 2                             -0.9751214
## 32                            -0.9555756
## 62                            -0.9605194
## 92                            -0.5771052
##     FreqBodyAccelerometerMagnitude-meanFreq()
## 1                                  0.08640856
## 31                                 0.23665501
## 61                                 0.28455529
## 91                                 0.19064372
## 121                                0.11918714
## 151                               -0.09774335
## 2                                  0.26629821
## 32                                 0.13093420
## 62                                 0.11964996
## 92                                 0.39320621
##     FreqBodyAccelerometerJerkMagnitude-mean()
## 1                                 -0.93330036
## 31                                -0.98526213
## 61                                -0.99254248
## 91                                -0.05711940
## 121                                0.02621849
## 151                               -0.44265216
## 2                                 -0.98537411
## 32                                -0.98387470
## 62                                -0.97706530
## 92                                -0.16906435
##     FreqBodyAccelerometerJerkMagnitude-std()
## 1                                 -0.9218040
## 31                                -0.9816062
## 61                                -0.9925360
## 91                                -0.1034924
## 121                               -0.1040523
## 151                               -0.5330599
## 2                                 -0.9845685
## 32                                -0.9841242
## 62                                -0.9751605
## 92                                -0.1640920
##     FreqBodyAccelerometerJerkMagnitude-meanFreq()
## 1                                      0.26639115
## 31                                     0.35185220
## 61                                     0.42222010
## 91                                     0.09382218
## 121                                    0.07649155
## 151                                    0.08535241
## 2                                      0.34175857
## 32                                     0.28006242
## 62                                     0.30487187
## 92                                     0.20750093
##     FreqBodyGyroMagnitude-mean() FreqBodyGyroMagnitude-std()
## 1                     -0.8621902                  -0.8243194
## 31                    -0.9584356                  -0.9321984
## 61                    -0.9846176                  -0.9784661
## 91                    -0.1992526                  -0.3210180
## 121                   -0.1857203                  -0.3983504
## 151                   -0.3259615                  -0.1829855
## 2                     -0.9721130                  -0.9610984
## 32                    -0.9718406                  -0.9613857
## 62                    -0.9617759                  -0.9567887
## 92                    -0.5307048                  -0.6517928
##     FreqBodyGyroMagnitude-meanFreq() FreqBodyGyroJerkMagnitude-mean()
## 1                      -0.1397750127                       -0.9423669
## 31                     -0.0002621867                       -0.9897975
## 61                     -0.0286057725                       -0.9948154
## 91                      0.2688443675                       -0.3193086
## 121                     0.3496138955                       -0.2819634
## 151                    -0.2193033761                       -0.6346651
## 2                       0.0185644722                       -0.9902487
## 32                     -0.1063589092                       -0.9898620
## 62                     -0.0661266046                       -0.9778498
## 92                      0.3052838253                       -0.5832493
##     FreqBodyGyroJerkMagnitude-std() FreqBodyGyroJerkMagnitude-meanFreq()
## 1                        -0.9326607                            0.1764859
## 31                       -0.9870496                            0.1847759
## 61                       -0.9946711                            0.3344987
## 91                       -0.3816019                            0.1906634
## 121                      -0.3919199                            0.1900007
## 151                      -0.6939305                            0.1142773
## 2                        -0.9894927                            0.2648015
## 32                       -0.9896329                            0.1947221
## 62                       -0.9777543                            0.1606628
## 92                       -0.5581046                            0.1263446
##     angle(TimeBodyAccelerometerMean,gravity)
## 1                               0.0213659656
## 31                              0.0274415479
## 61                             -0.0002223407
## 91                              0.0604537474
## 121                            -0.0026951252
## 151                             0.0960860762
## 2                               0.0057918096
## 32                              0.0395284311
## 62                             -0.0136819153
## 92                             -0.0301017379
##     angle(TimeBodyAccelerometerJerkMean),gravityMean)
## 1                                         0.003060407
## 31                                        0.029709788
## 61                                        0.021963783
## 91                                       -0.007930378
## 121                                       0.089931687
## 151                                      -0.061083841
## 2                                        -0.006355576
## 32                                       -0.003392867
## 62                                        0.041182224
## 92                                        0.053400580
##     angle(TimeBodyGyroMean,gravityMean)
## 1                          -0.001666985
## 31                          0.067698134
## 61                         -0.033793838
## 91                          0.013059491
## 121                         0.063338285
## 151                        -0.194699963
## 2                           0.065286011
## 32                          0.020973170
## 62                         -0.015103516
## 92                          0.021619677
##     angle(TimeBodyGyroJerkMean,gravityMean) angle(X,gravityMean)
## 1                                0.08443716            0.4267062
## 31                              -0.06488162           -0.5912475
## 61                              -0.02792293           -0.7434079
## 91                              -0.01874319           -0.7292472
## 121                             -0.03997685           -0.7444838
## 151                              0.06568357           -0.6471957
## 2                               -0.02937101            0.6174234
## 32                              -0.07620420           -0.7744361
## 62                               0.11232465           -0.6271801
## 92                              -0.08584708           -0.6619600
##     angle(Y,gravityMean) angle(Z,gravityMean)
## 1            -0.52034382          -0.35241311
## 31           -0.06046603          -0.21801723
## 61            0.27017503           0.01225285
## 91            0.27695302           0.06885891
## 121           0.26724578           0.06500471
## 151           0.33476328           0.07416637
## 2            -0.51973255          -0.47892823
## 32            0.15585728          -0.11822440
## 62            0.33793791          -0.06789598
## 92            0.32144301          -0.03688928
```

Saving the tidy data to a file.

```r
write.table(tidyData, file="TidyData.txt", row.names = FALSE)
```
