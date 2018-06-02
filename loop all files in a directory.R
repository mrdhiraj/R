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
  nm <- list.files(path=directory)
  # data<-read.csv(directory);
  # head(data);
  
  for (i in 1:length(nm))
  {
    print(nm[i])
  }
}
