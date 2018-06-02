findcompletecases <-function(directory,  id =1:332) {
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
  directory <- paste(getwd(),"/",'specdata',"/",sep="")
  #list all files with full names 
  nm <- list.files(path=directory,include.dirs = FALSE,full.names=TRUE)
  # data<-read.csv(directory);
  # head(data);
  
  
 j<-0
  completecases<-c()
  for (i in id) {
    data <- read.csv(nm[i])
    completedata <- sum(complete.cases(data))
    completecases<-c(completecases,completedata)
    
  }
  
  cd<-list(a<-id,b<-completecases)
  print(cd)
}


