## Put comments here that give an overall description of what your
## functions do

## he first function, makeCacheMatrix creates a special "matrix", which is really a list containing a function to

#set the value of the matrix
#get the value of the matrix
#set the value of the inverse
#get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x<<-y
        m<<-NULL
        
    }
    get <- function() x
    setinverse <- function(inverse) m <<-inverse
    getinverse <- function(inverse) m
    
    list(set= set, get = get, setinverse, getinverse)
    
   

}


## The following function calculates the mean of the special "matrix" 
#created with the above function. 
#However, it first checks to see if the mean has already been calculated. 
#If so, it gets the inverse from the cache and skips the computation. Otherwise, 
#it calculates the inverse of the data and
#sets the value of the inverse in the cache via the setinverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   m <- x$getmean()
   if (!is.null(m)){
          message("getting cached data")
          return(m)
   }
    
   data <- x$get()
   m <- solve(x)
   x$setinverse(m)
   m
   
}