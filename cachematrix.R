## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function. The function creates
This function is meant to create the matrix that we can use to cache its own inverse
makeCacheMatrix <- function(x = numeric()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Write a short comment describing this function
This function is meant to determine the inverse of the matrix that is created using makeCatcheMatrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}
#My functions
x <- makeCacheMatrix(matrix(1:3,2,2))
x$get()
x$getinverse()
cacheSolve(x)
 [,1] [,2]
[1,]    1    3
[2,]    2    1

> x$getinverse()
NULL
> cacheSolve(x)
     [,1] [,2]
[1,] -0.2  0.6
[2,]  0.4 -0.2
> 
