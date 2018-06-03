corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  ##setwd(directory)
  directory <- paste(getwd(),"/",directory,"/",sep="")
  #list all files with full names 
  allfiles <- list.files(path=directory,include.dirs = FALSE,full.names=TRUE)#learning point how to loop all files?
  # data<-read.csv(directory);
  # head(data);
  
  corelation <- c() 
  
  for(f in 1:length(allfiles)){
    data <- read.csv(  allfiles[f] )
    data <- data[complete.cases(data),]#leaning point how to get only complete cases?
    
    if ( nrow(data) > threshold ) {
      corelation <- c(corelation, cor(data$sulfate, data$nitrate) ) #find correlation ?
    }
  }
  
  return( corelation )
}
#uses
#>c<-corr('specdata')
#> summary(c)

  
