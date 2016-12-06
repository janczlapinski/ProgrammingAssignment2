## Put comments here that give an overall description of what your
## functions do

## function produce a list of:
##setting of matrix value
##getting matrix value
##setting inversion of matrix
##getting inversion of matrix

makeCacheMatrix <- function(x = matrix()) {
        I <- NULL
        set <- function(y) {
                x <<- y
                I <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) I <<- inverse
        getinv <- function() I
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}



## Write a short comment describing this function
##function counts invesion of given matrix or take it from catche if possible

cacheSolve <- function(x, ...) {
        I <- x$getinv()
        if(!is.null(I)) {
                message("getting cached data")
                return(I)
        }
        data <- x$get()
        I <- solve(data, ...)
        x$setinv(I)
        I
}


x<-matrix(1:4,2,2)
makeCacheMatrix(x)
cacheSolve(g)