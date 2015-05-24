## The function written below will set and gets the inverse of a matrix
## given as the input

## the below function sets and gets the matrix
makeCacheMatrix <- function(x = matrix()) {
  Inverse <- NULL
  set <- function(y) {
    x <<- y
    Inverse <<- NULL
  }
  get <- function() x
  setInv <- function(inv) Inverse <<- inv
  getInv <- function() Inverse
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
  
}

## Cache solve takes the output list from makeCaheMatrix as input
## and calculates inverse for the input matrix

cacheSolve <- function(x, ...) {
  
  Inverse <- x$getInv()
  if(!is.null(Inverse)) {
    message("getting cached data")
    return(Inverse)
  }
  data <- x$get()
  Inverse <- solve(data, ...)
  x$setInv(Inverse)
  Inverse
}
