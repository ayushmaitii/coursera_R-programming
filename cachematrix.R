## This overall programme consists of a pair of functions 
## that cache the inverse of a matrix(square)


## makeCacheMatrix is a function to create a special vector, 
## which is actually a list containing a function to set&get value of matrix and their inverse

makeCacheMatrix <- function(x = matrix()) {
  	inverse<-NULL
  	set<-function(y){
  	x<<-y
  	inverse<<-NULL
}
get<-function() x
setmatrix<-function(solve) inverse<<- solve
getmatrix<-function() inverse
list(set=set, get=get,
  	setmatrix=setmatrix,
   	getmatrix=getmatrix)
}

## cacheSolve function calculates the inverse. It first checks for cache 
## and evalaute the inverse, if cache not found

cacheSolve <- function(x=matrix(), ...) {
   	inverse<-x$getmatrix()
   	if(!is.null(inverse)){
      	message("getting cached data")
  		return(inverse)
    }
    matrix<-x$get()
    inverse<-solve(matrix, ...)
    x$setmatrix(inverse)
    inverse

## Return a matrix that is the inverse of 'x'


}