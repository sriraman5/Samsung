## Assumes one is working in the appropriate directory
## with two subfolders (test) and (train)

# read in table of features

features <- read.table("features.txt")

# boolean vectors corresponding to fields containing means and standard deviations (33 apiece)

means <- (grepl("mean",features$V2)) & (!grepl("meanFreq",features$V2)) # not including weighted mean
stds <- (grepl("std",features$V2))

# table of activities

activity_labels <- read.table("activity_labels.txt")

# combine files in two stages - first id info, then data

test.id <- read.table("test/subject_test.txt")
test.id <- cbind(test.id,read.table("test/y_test.txt"))
test.id <- cbind(test.id,FALSE)
names(test.id) <- c("subject","activity","train")

train.id <- read.table("train/subject_train.txt")
train.id <- cbind(train.id,read.table("train/y_train.txt"))
train.id <- cbind(train.id,TRUE)
names(train.id) <- c("subject","activity","train")

test.data <- read.table("test/X_test.txt")
test.data <- cbind(test.data[,means],test.data[,stds])

train.data <- read.table("train/x_train.txt")
train.data <- cbind(train.data[,means],train.data[,stds])

fixed.mean.names <- function() {
    
    # principal cleanup is removing the word mean and replacing it with a prefix (m.)
    # eliminating mean()
    # eliminating excess hyphens
    
    # decided to leave rest of name alone since it is well documented elsewhere
    
    new <- features$V2[means]   # name column in raw file
    new <- gsub("-mean\\(\\)","",new)
    new <- paste("m.",new,sep="")
    new
}

fixed.sd.names <- function() {
    
    # same as above for standard deviations
      
    new <- features$V2[stds]   
    new <- gsub("-std\\(\\)","",new) # note escape sequence for parentheses!
    new <- paste("sd.",new,sep="")   # prefer sd to std 
    new
}

names(test.data) <- c(fixed.mean.names(),fixed.sd.names())
names(train.data) <- c(fixed.mean.names(),fixed.sd.names())

tidy.data <- rbind(cbind(train.id,train.data),cbind(test.id,test.data))

# insert character activity name instead of coded ... not sure I like this idea
# hate having to type out long words every time

tidy.data$activity <- activity_labels[tidy.data$activity,2]

library(reshape)

summarize <- function(){
    
    m.use <- melt(tidy.data,id=c(1:2),measure=c(3:69)) 
    m.use <- cast(m.use,subject+activity~variable,mean) ## pretty sure you shouldn't average sd's
    write.table(m.use,"Samsung.txt")                    ## can't be the worst thing in the world though
}

summarize() # do this in a function ... 

## clean up a little
## leave a few useful globals lying around

rm(list=c("features","test.data","test.id","train.data","train.id","means","stds"))
