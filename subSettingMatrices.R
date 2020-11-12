# Matrices are subsetted using a two numbers
# specifying the row num and col num, 
# using square brackets

# subsetting metrices is done using a 
# square brackets, which always returns the same class as the class subsetted. 
# But in case of matrix the returned object is of class list this can be turend of using drop argument

subsetMatrix <- function(){
  # define matrix (range, row, col)
  # range <- specifies range of number both inclusive
  # row and then columns
  mat <- matrix(1:6, 2, 3)
  
  # get element of 1 row and 2 column
  print(mat[1, 2]) # 3
  
  # get element of 2 row and 3 column
  print(mat[2, 3]) # 6
  
  # getting entire row
  print(mat[2, ])
  
  # getting entire column
  print(mat[, 3])
  
  # subsetting and getting the matrix type
  print(mat[2, 2, drop = FALSE]) # returns matrix class object
  
  print(mat[, 2, drop = FALSE]) # returns matrix class object
}
