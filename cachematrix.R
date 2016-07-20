## Put comments here that give an overall description of what your
## functions do

## create an object containing a matrix and its inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y)
    {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setSolve <- function(solve) m <<- solve
    getSolve <- function() m
    list(set = set, get = get, setSolve = setSolve, getSolve = getSolve)
}


## Get the cached inverse of the given matrix

cacheSolve <- function(x, ...) {
    m <- x$getSolve()
    if (!is.null(m))
    {
        message("getting cached inverse")
        return (m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setSolve(m)
    m
    ## Return a matrix that is the inverse of 'x'
}
