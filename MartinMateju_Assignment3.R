



## Martin Mateju_Assignment3

makeCacheMatrix <- function(x = matrix()) {
 s <- NULL
 set<- function(y){
   x <<- y
   s <<- NULL
 }
 
 get <- function() x
 setInver <- function(solve) s <<- solve
 getInver <- function() s
 list(set = set, get = get,
      setInver = setInver,
      getInver = getInver)
}



cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  s <- x$getInver()
  if(!is.null(s)){
    message("Getting data")
    return (s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setInver(s)
  s
}



