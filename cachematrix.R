<<<<<<< HEAD
## Put comments here that give an overall description of what your
## functions do

## The task is to write to write a script to perform cashing of the inverse of an matrix and 
## perform some 
## Usage: 1) Run both function
##        2) get Result: cacheSolve(makeCacheMatrix(x))


## Write a short comment describing this function

## First,  a special "matrix" object is created that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {   ## define argument 
        inv <- NULL                           ## create inverse variable as empty
        set <- function(y){                   ## define function for set new variable
                  x <<- y                     ##
                  inv <<- NULL                ## make varaible inv empty
        }                   
        get <- function() x                   ## get value of original matrix
        setinverse <- function(inverse) inv <- inverse ## set inverse matrix
        getinverse <- function() inv          ## get inverse matrix
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## Afunction to solve the calculation of a inverted matrix from cache if not already present.

cacheSolve <- function(x, ...) {                   ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()                    
        if(!is.null(inv)) {                        ## if already inversion exists
                  message("getting cached data")   
                  return(inv)                      ## print inverted matrix
        }
        data <- x$get()                            ## get matrix data if not inverted yet
        inv <- solve(data, ...)                    ## create inversion
        x$setinverse(inv)                          ## set the inverted matrix
        print(inv)                                 ## print the inverted matrix
}

### Test of correctness


TestMatrix <- matrix(2:5,2,2)        
TestMatrix

cacheSolve(makeCacheMatrix(TestMatrix))

=======
## Put comments here that give an overall description of what your
## functions do

## The task is to write to write a script to perform cashing of the inverse of an matrix and 
## perform some 
## Usage: 1) Run both function
##        2) get Result: cacheSolve(makeCacheMatrix(x))


## Write a short comment describing this function

## First,  a special "matrix" object is created that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {   ## define argument 
        inv <- NULL                           ## create inverse variable as empty
        set <- function(y){                   ## define function for set new variable
                  x <<- y                     ##
                  inv <<- NULL                ## make varaible inv empty
        }                   
        get <- function() x                   ## get value of original matrix
        setinverse <- function(inverse) inv <- inverse ## set inverse matrix
        getinverse <- function() inv          ## get inverse matrix
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## Afunction to solve the calculation of a inverted matrix from cache if not already present.

cacheSolve <- function(x, ...) {                   ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()                    
        if(!is.null(inv)) {                        ## if already inversion exists
                  message("getting cached data")   
                  return(inv)                      ## print inverted matrix
        }
        data <- x$get()                            ## get matrix data if not inverted yet
        inv <- solve(data, ...)                    ## create inversion
        x$setinverse(inv)                          ## set the inverted matrix
        print(inv)                                 ## print the inverted matrix
}

### Test of correctness


TestMatrix <- matrix(2:5,2,2)        
TestMatrix

cacheSolve(makeCacheMatrix(TestMatrix))

>>>>>>> 86f3765431ff481ee2ccbd0850dda3dfe39ae9f8
