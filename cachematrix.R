## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        k <- NULL
        
        set <- function(matrix){
                
                k <- NULL
                
                m <<- matrix
                
        }
        
        get <- function(){
                
                m
        }
        
        setInverse <- function(inverse){
                
                k <<- inverse
        }
        
        getInverse <- function(){
                
                k
        }
        
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
        m <- x$getInverse()
        
        if(!is.null(m)){
                
                message("obtaining cached data")
                
                return(m)
                
        }
        
        data <- x$get()
        
        m <- solve(data)  %*% data
        
        x$setInverse(m)
        
        m 
        
        
        ## Return a matrix that is the inverse of 'x'
}
