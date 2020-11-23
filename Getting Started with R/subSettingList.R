# '[]' this always return the elements of the 
#  same class as the original, 
#  if we subset a list we get a list


# '[[]]' this returns the value associated with the elements 
#  of the original list 

#  $ is used to extract elements of a list or dataframe by
#  name, semantics, that are similar in the list. The returned 
#  class may not be of the same class.

subset_single_bracket <- function(){
  # define a list
  
  lst <- list(foo = 1:4, bar = 0.6)
  
  # '[' using this will return a list as 'lst' is list
  
  print(lst[1]) # will return the element 'foo' and its elemets as sequence
}

subset_double_bracket <- function(){
  lst <- list(foo = 1:4, bar = 0.6)
  
  print(lst[[1]]) # will return only the sequence of characters
}

subset_dollar <- function(){
  lst <- list(foo = 1:4, bar = 0.6)
  
  print(lst$bar) # will return the value associated with the 'bar' keyword
  print(lst[['bar']]) # this is same as above as it does the same.
}

subSetting_multi <- function(){
  # if we want to subset multiple elements from the list, 
  # then we have to pass a vector containing the indexes of the list's elements
  
  # We can't use '[[]]] or 'name' for multiple extraction.
  
  lst <- list(foo = 1:4, age = 21, fname = 'shashi', lname = 'kumar')
  
  index = c(2, 3, 4) # will extract only the specified index in 1-based fashion
  
  print(lst[index])
  # this will print all the elements, that are in the vector 'c'
}

subsetNested <- function(){
  x <- list(a = list(10, 2, 34), b = list('a', 'b', 'c'))
  
  print(x[[c(1, 2)]]) # print second element of the 1 element of the original list ie. 2
  print(x[[1]][[2]]) # same as above
}
