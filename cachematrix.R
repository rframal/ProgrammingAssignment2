## Put comments here that give an overall description of what your
## functions do
The function cacheSolve returns the inverse of the matrix created with
the makeCacheMatrix function.
If the cached inverse is available, cacheSolve retrieves it, and if
not, it computes, caches, and returns it. thats the gist of this.
## Write a short comment describing this function
#Creates a special "matrix" object that can cache its inverse.


CacheMatrix <- function(x = matrix()) {
cachedInverse <- NULL
set <- function(y) {
x <<- y
cachedInverse <<- NULL
}
get <- function() x
setInverse <- function(inverse) cachedInverse <<- inverse
getInverse <- function() cachedInverse
list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse)
}


## Write a short comment describing this function
#Return the inverse of an cacheMatrix object

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
invFunc <- x$getInverse()
if(!is.null(invFunc)) {
message("getting cached data")
return(invFunc)
}
data <- x$get()
invFunc <- solve(data, ...)
x$setInverse(invFunc)
invFunc
}


