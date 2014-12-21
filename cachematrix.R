## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {           ## default value of x is numeric()
    i <- NULL                                         ## default value of i is NULL   
    set <- function(y) {                              ## function set. 
        x <<- Y                                       ## modify x to y
        i <<- NULL                                    ## meanwhile modify i to NULL
    }
    get <- function() {                               ## function get
        x                                             ## return x
        }                                             ## x is a free variable, so find it in its definition environment
    setinverse <- function(inverse) {                 ## function setinverse
        i <<- inverse                                 ## modify i to inverse
        }                                             
    getinverse <- function() {                        ## function getinverse
        i                                             ## return i
        }                                             ## i is a free variable, so find it in its definition environment
    list(set = set, get = get,                        ## return a list of these functions
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {                      ## read in the list created by function makeCasheSolve
    i <- x$getinverse()                               ## read in the cached inverse matrix
    if(!is.null(i)) {                                 ## if the value is not NULL
        message("getting cached data")                ## return massege "getting cached data"
        return(i)                                     ## return cached value
    }
                                                      ## if the value is NULL
    data <- x$get()                                   ## read the matrix 
    i <- solve(data, ...)                             ## solve the matirx
    x$setinverse(i)                                   ## cached the inverse matrix into x environment
    i                                                 ## return the inverse matrix
}
