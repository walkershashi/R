matrices <- function(){
  # matrix() function is used to create a matrix in R
  # For a sequence, the matrix are filled columnwise
  
  m <- matrix(nrow = 2, ncol = 3)
  print(m) # Nothing is assigned, so NA values
  print(dim(m)) # row, col 
  print(attributes(m)) # dim

}

binding <- function(){
  # rbind(), and cbind() are also used to create matrices in R
  # For a sequence both are included
  x <- 1:6
  y <- 10:15
  
  rbin <- rbind(x, y)
  cbin <- cbind(x, y)
  print(rbin)
  print(cbin)
  
  # If length of x and y are not same then warning msg is displayed,
  # and then the missing elements are repeated from begining of
  # the smaller one
  x1 <- 1:8
  y1 <- 10:13
  rbin1 <- rbind(x1, y1)
  cbin1 <- cbind(x1, y1)
  
  print(rbin1)
  print(cbin1)
  
}

factors <- function(){
  # Factors are used to represent categorical data
  # can be ordered or unordered
  
  fctr <- factor(c('yes', 'no', 'yes', 'no', 'notsure', 'notsure', 'yes', 'no', 'yes', 'notsure'))
  print(fctr) # prints factors along with levels in alphabet order
  print(table(fctr)) # prints frequency of the levels
  print(unclass(fctr)) # Brings down to integer
  
  # The levels in factors are alphabetical order by default
  # This can be changed using levels() arguments
  
  f_level <- factor(c('yes', 'no', 'yes', 'no', 'notsure', 'notsure', 'yes', 'no', 'yes', 'notsure'),
                    levels = c('no', 'yes', 'notsure'))
  print(f_level)
  print(table(f_level))
  print(unclass(f_level))
  
}
