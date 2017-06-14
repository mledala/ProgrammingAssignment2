## These functions cache the inverse of a Matrix


## function to set, get the value of the Matrix and to set, get the
## value of the inverse 

makeCacheMatrix <- function(x = matrix()) {
  i<- NULL
  set <-function(y){
    x<<-y
    i<<-NULL
  }
  get <-function() x
  setinverse <-function(inverse) i<<- inverse
  getinverse <- function() i
  list(set=set, get=get,
       setinverse =setinverse,
       getinverse =getinverse)
}


## This function calculates the inverse of the matrix created with 
## above function

cacheSolve <- function(x, ...) {
  i<-x$getinverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data<-x$get()
  i<-solve(data, ...)
  x$setinverse(i)
  i
}
