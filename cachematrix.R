## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}
makeCacheMatrix <- function(x = matrix(nrow=0,ncol=0)){
    inverse <- NULL
    set <- function(y){
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    setInverse <- function(xInv) inverse <<- xInv
    getInverse <- function() inverse
    list(set = set, get = get, 
         setInverse = setInverse,
         getInverse = getInverse)
    
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
## comment later
cacheSolve <- function(matrix, ...) {
    inverse <- matrix$getInverse()
    if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
    }
    else
    {
        data <- matrix$get()
        inverse <- solve(data,...)
    }
    matrix$setInverse(inverse)
    inverse
}
