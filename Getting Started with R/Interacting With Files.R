ReadCSV <- function(){
  # Files can be read using read() method
  # read.table() is used to reasd the tables and 
  # read.csv() is used to read the csv file.
  table <- read.csv("Chicago_Crime_Data.csv")
  print(table)
}

WriteFile <- function(){
  # We can write the file to the disk using
  # dput() method
  df <- data.frame(a = 1, b = 'a')
  dput(y) # Outputs the full structure of the df, including metadata
  
  # To save the file on the disk, use file argument 
  dput(y, file = 'Output.txt') # If file not present, make it and overwrites if present
}

ReadFile <- function(){
  # to read the file from the disk we can use dget(), but it reads only one file at a time.
  file <- dget("Output.txt")
  file # gets the original Data Frame which is stored, without the metadata which is also stored
}

Dumping <- function(){
  # Dumping is used to strore multiple files on the disk
  fname <- 'Shashi'
  mname <- 'Kumar'
  lname <- 'Soni'
  
  # dump() is used to store, a vector of objects is passed as a string
  dump(c('fname', 'mname', 'lname'), file = 'Name.txt')
  source('Name.txt')
  print(fname)
  print(mname)
  print(lname)
}
