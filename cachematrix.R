## Two functions to implement cached matrix inversion  

## makeCacheMatrix generates a special matrix able to cache its own inverse
## Returns list containing functions to:
## -Set and get the matrix
## -Set and get the inverse of the matrix

## cacheSolve returns the inverse of the matrix
## If the inverse was already computed it will return the cached inverse
## If not already stored, it will create and store the inverse

## Generate list to set and get matrix and inverse

makeCacheMatrix <- function(x = matrix()) {
  inv = NULL
  set <- function(x) {
    mat <<- x
    inv <<- NULL
  }
  get <- function() {
    return(mat)
  }
  set_inverse <- function(x) {
    inv <<- x
  }
  get_inverse <- function() {
    return(inv)
  }
  return(
    list(set = set, get = get, 
         set_inverse = set_inverse, get_inverse = get_inverse)
  )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  my_inv <- x$get_inverse()
  if(!is.null(inverse)) {
    message('Getting cached data')
    return(inverse)
  }
  my_mat <- x$get()
  my_inv <- solve(my_mat)
  x$set_inverse(my_inv)
  return(my_inv)
}
