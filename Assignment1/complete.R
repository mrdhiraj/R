complete <-function(directory,  id =1:332) {
  ##directory' is a character vector of length I indicating 
  ##the location of the CSV files 
  ##' pollutant' is a character vector of length I indicating 
  ##the name of the pollutant for which we will calculate the 
  ##mean; either " sulfate" or "nitrate" 
  ##' id' is an integer to be used Return the mean of 
  ##in the ' id' vector NOTE: Do not round 
  ##vector indicating the monitor ID numbers 
  ##the pollutant across all monitors list (ignoring NA values) 
  ##the result! 
  ##setwd(directory)
  directory <- paste(getwd(),"/",directory,"/",sep="")
  #list all files with full names 
  nm <- list.files(path=directory,include.dirs = FALSE,full.names=TRUE)#learning point how to loop all files?
  # data<-read.csv(directory);
  # head(data);
  print(nm)
  
 j<-0
  completecases<-c()
  for (i in id) {
    data <- read.csv(nm[i])
    completedata <- sum(complete.cases(data))#learning point how to find complete cases?
    completecases<-c(completecases,completedata)
    
  }
  
  cd<-data.frame(id<-id,nobs<-completecases)#learning point how to create datafram?
  print(cd)
  colnames(cd)<-c('id','nobs')
  return(cd)
}


#uess
# set.seed(42)
# cc <- complete("specdata", 332:1)
# use <- sample(332, 10) # sample random dta
# print(cc[use, "nobs"]) # get only nobs value from random indexes


