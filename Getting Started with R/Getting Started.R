dataTypes <- function(){
  # Inf is infinity
  # NaN is thought of as an missing value
  print(1/0) # Prints out Inf 
  print(NaN/NaN) # Print NaN

  # c() function is used to concatenate the vector
  
  logicalVector <- c(T, F) # T/F can also be written an TRUE/FALSE
  print(logicalVector)

  complexNum <- c(1 + 9i, 2 + 4i)
  print(complexNum)

  print(length(complexNum)) # Length = 2

}

createVector <- function(){
  # vector() function is used to create vector of specific data type;
  # By default the data type is numeric
  # length specifes the size of the vector
  vctr <- vector('numeric', length = 10) # Creates the vector of zeros of lenght 10
  print(vctr)
  print(length(vctr))
}

implicitCoercion <- function(){
  # when different objects of different data types are concatenated,
  # then Implicit Coercion occurs to ensure that every element in the vector
  # is of the same class, and no error occurs.
  # This is done by using least common denomminator
  
  # By convention TRUE/T is represented as 1.0/1 and FALSE/F as 0.0/0
  
  character <- c(1.7, 4, 'a', TRUE) # Get converted to character; least common denomminator is char
  print(character)
  
  float <- c(TRUE, 2, 1.9, F) # Get converted to float; least common denomminator is float
  print(float)
  
  numeric <- c(9, T, 1, FALSE) # Get converted to numbers; least common denomminator is numeric
  print(numeric)
}

explicitCoercion <- function(){
  # To convert objects from one class to another is called explicit coercion
  # This is done by using as.* function.
  
  # By convention 0/0.0 is FALSE/F and any number greater that 0 is TRUE/T
  
  x <- 0:6
  print(x)
  print(class(x)) # returns integer
  
  y <- as.numeric(x)
  print(y) # basically same as x
  print(class(y)) # returns numeric
  
  z <- as.logical(x)
  print(z) # Boolean values
  print(class(z)) # returns logical
  
  c <- as.character(x)
  print(c) # Character values
  print(class(c)) # returns character
  
  # If there is no means for conversion, then all values becomes NA,
  # Warning is displayed
  char <- c('a', 'b', 'c')
  na <- as.numeric(char)
  print(na) # as c is character so na will be NA
  print(class(na))
  
  complex <- as.complex(char)
  print(complex) # Real and imaginary part are zero
  print(class(complex))
}

lists <- function(){
  # Lists in R can store data types of different classes
  # list() function is used to create lists
  l0 <- list(1, 2, 3, 4, 'list in list')
  l1 <- list(1, 'a', l0, TRUE, 1+4i)
  print(l1)
  print(class(l1))
}
