## The function written below will set and gets the inverse of a matrix
## given as teh input

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  Inverse <- NULL
    x <<- y
    Inverse <<- NULL
  }
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
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
