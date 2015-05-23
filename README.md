This program calculates the inverse of a matrix and caches the result.
-----------------------------------------------------------------------
There are 2 functions in this program:
makeCacheMatrix() - which prepares the matrix object given a square matrix as argument
cacheSolve() - calculates the inverse of a matrix

Unit testing for the functions, will produce the following outputs

* source("cachematrix.R")
* amatrix=makeCacheMatrix(matrix(1:4,2,2))
* amatrix$get()
      [,1] [,2]  
[1,]    1    3  
[2,]    2    4  
* amatrix$getinverse()  
NULL  
* cacheSolve(amatrix)  
     [,1] [,2]  
[1,]   -2  1.5  
[2,]    1 -0.5  
* amatrix$getinverse()    
     [,1] [,2]  
[1,]   -2  1.5  
[2,]    1 -0.5  
* cacheSolve(amatrix)  
getting cached matrix  
     [,1] [,2]  
[1,]   -2  1.5  
[2,]    1 -0.5  
* amatrix$set(matrix(5:8,2,2))  
* amatrix$get()  
     [,1] [,2]  
[1,]    5    7  
[2,]    6    8  
* cacheSolve(amatrix)  
     [,1] [,2]  
[1,]   -4  3.5  
[2,]    3 -2.5  
* amatrix$getinverse()  
     [,1] [,2]  
[1,]   -4  3.5  
[2,]    3 -2.5  
* cacheSolve(amatrix)  
getting cached matrix  
     [,1] [,2]  
[1,]   -4  3.5  
[2,]    3 -2.5  