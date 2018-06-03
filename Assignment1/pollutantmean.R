pollutantmean <-function(directory, pollutant, id =1:332) {
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
  #print(directory)
  #list all files with full names 
  nm <- list.files(path=directory,include.dirs = FALSE,full.names=TRUE)
  # data<-read.csv(directory);
  # head(data);
  alldata<-read.csv(nm[1])
  for (i in 2:length(nm))
  {
    #print(nm[i])
    data<-read.csv(nm[i])
    alldata<-rbind(alldata,data)
   
  }
  filtereddata <-alldata[alldata$ID %in% id,]#learning point how to filter with in key word
  mean<-mean(filtereddata[,pollutant],na.rm=TRUE)#find mean with removing na values
  print(mean)
}
