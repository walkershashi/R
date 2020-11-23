# subsetting means to extract the data from a R objects
# [ always return an object of the same class as the original
#  and it is used to select more than one obejct.

# [[ this is used to extract elements of list or dataframe 
#  and can only be used to extract a single element and the 
#  class of the returned object will not necessarily be a
#  list of dataframe.

# $ is used to extract elements of a list or dataframe by
#  name, semantics are similar to half of [[ . The returned 
#  class may not be of the same class.

subsetting <- function(){
  x <- c('a', 1, 2, 'b', '4')
  print(x[2]) # will return '1' so that 1 is mounted to str class, works as 1 based indexing
  
  # print sequence of ele
  print(x[1:4])
  
  # print logically using operators --> logical indexing
  print(x[x > 'a']) # x provided in the index must be same as the vector
  
  u <- x > '1'
  print(u) # prints TRUE for values that are grater than '1'
  
  # print actual values from u
  print(x[u]) # print values from the x, where TRUE was present
}

subSetting_using_double <- function(){
  list_ <- list(foo = 1:4, bar = 89)
  
  print(list_[1]) #Returns list since single barcket is used
  
  print(list_[[1]]) # return the seq at 1
}


