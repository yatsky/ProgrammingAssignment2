## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## 1.set the value of the matrix
## 2.get the value of the matrix
## 3.set the value of the inverse
## 4.get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y  ## Here the x is the x in 'x = matrix()'
                i <<- NULL  ## Here the i is the i in 'i  <- NULL'
        }
        get <- function() x
        ## In the following line, actually we can write like 'i << -inverse'
        ## and in the console we can use it like mx$setinverse(solve(mymatrix))
        ## Or, we can just write i <<- solve(x)
        ## and in the console we use it like mx$setinverse(mymatrix)
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {  ## Here the x is merely a parameter indicating here needs some input
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
