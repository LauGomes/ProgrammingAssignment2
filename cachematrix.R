## First a variable is created, in this case the "invert". 
## Second step is to set the value of the matrix
## Third step is to get the value of the matrix
## Fourth step is apply the function in the matrix. In this case, the function is "inverse".
## Fifth step is to get the result of the step before.

makeCacheMatrix <- function(x = matrix()) {
        invert <- NULL
        set <- function(y) {
                x <<- y
                invert<<- NULL
        }
        get <- function() {x}
        setinverse <- function(inverse) invert <<- inverse
        getinverse <- function() invert
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}



## First this function get a matix create using the previous function
## Second it checks to find if the matrix was already inverted than it makes a decision:
        ##If TRUE: Return the inverted matrix from the previous function
        ##If FALSE: Apply the function "solve" and return the inverted matrix

cacheSolve <- function(x, ...) {
        invert <- x$getinverse()
        if(!is.null(invert)) {
                message("getting cached data")
                return(invert)
        }
        data <- x$get()
        invert <- solve(mat, ...)
        x$setinverse(invert)
        invert
}

