## This is a pair of functions that will cache the inverse of a matrix

## This makes an object that can cache the inverse

makeCacheMatrix <- function(x = matrix()) {
  ## Inverse property
  i <- NULL
  
  ## Setting the matrix
  set <- function(matrix){
    m <<- matrix
    i <<- NULL
  }
  
  ## Getting the matrix
  get <- function() {
    ## Return the matrix
    m
  }
  
  ## Setting the inverse of the matrix
  setInverse <- function() {
    ## Returns the inverse property
    i
  }
  
  ## Returns  a list of methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Computes the inverse of the matrix returned by "makeCacheMatrix".
## If the inverse has been previously calculated, the "cachesolve" should 
## get the inverse from the cache

cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of x
  m <- x$getInverse()}
  
  ## Return the inverse if it is already set
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  ## Getting the matrix from our object
  data <- x$get()
  
  ## This calculates the inverse
  m<- solve(data) %*% data
  
  ##Sets the inverse to the object
  x$setInverse(m)
  
  ## Returns the matrix
  m