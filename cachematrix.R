## This file has two R functions which prepare a cached matrix and cache inverse of a matrix.

## This function takes a matrix as argument.
## This function returns a matrix object. You can set the values using $set, and retrive the matrix using $get.
## You can get the inverse of the matrix using $getinverse. If the inverse is not calculated yet, use cacheSolve() function first


makeCacheMatrix <- function(x = matrix()) {
  i <- NULL  #initially setting i to NULL
  set <- function(y) { #$set enables to gives new values to the matrix 
    x <<- y            #superassignment operator replaces the containing environment x
    i <<- NULL         #superassignment operator sets containing environment i
  }
  get <- function() x  #returns x
  setinverse <- function(inverse) i <<- inverse   #superassignment operator sets containing environment i
  getinverse <- function() i     #returns i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function take a makeCacheMatrix object as argument.
## If the inverse of a matrix is already calculated previously and the matrix has not changed, it retrives the previous result
## If the matrix has newly set values, it calculates the inverse and returns the result

cacheSolve <- function(x, ...) {
  i <- x$getinverse()             #checks if inverse was calculated previously
  if(!is.null(i)) {
    message("getting cached matrix")   #returns the cached result if the inverse was previously calculated
    return(i)
  } 
  #Goes here if the inverse was not previously calculated
  data <- x$get()              #gets the matrix values
  i <- solve(data, ...)        #calculates inverse of the matrix
  x$setinverse(i)              #sets the $setinverse with i
  i                            #returns inverse
}
