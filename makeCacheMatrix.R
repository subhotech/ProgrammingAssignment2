## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        
          i <- NULL
  set <- function(a2) {
          a1 <<- a2
          i <<- NULL
  }
  get <- function() a1
  setinv <- function(inverse) i <<- inverse
  getinv <- function() i
  list(set = set,
       get = get,
       setinv = setinv,
       getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if (!is.null(i)) {
          message("fetching data")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i
}
