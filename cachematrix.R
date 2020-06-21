## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## The makeCacheMatrix function will set the value of the matrix
  ## Initially the inverse of the matrix has not been calculated
  ## get() is to output the argument (x) into makeCacheMatrix environment
  ## setinverse is to assign inverse to the parent-enviroment variable inve
  ## getinverse is to output the parent-environment variable inv
  inv <- NULL
  set <- function(y){
          x <<- y
          inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse 
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)){
    message("getting cached matrix inverse")
    return(inv)
  }
  DataMatrix <- x$get()
  inv <- solve(DataMatrix, ...)
  x$setinverse(inv)
  inv
}
