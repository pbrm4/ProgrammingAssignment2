## Put comments here that give an overall description of what your
## functions do
    ##makeCacheMatrix will create a special matrix and is also able to store it's inverse.
    ##The second function cacheSolve checks for existing inverse, gives it back else calculates 
    ## and then stores it for further computaion.

## Write a short comment describing this function

    ##set -> sets the matrix  sent
    ##get -> gets the matrix
    ##setInverse-> sets the inverse of the given matrix
    ##getInverse -> gets the inverse of the given matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL;
        set <- function(matr){
          x <<- matr;
          inv <<- NULL;
        }
        get <- function(){
          x;
        }
        setInverse <- function(invMatr){
          inv <<- invMatr;
        }
        getInverse <- function(){
          inv;
        }
        list(set = set,get = get,setInverse = setInverse, getInverse = getInverse);
}


## Write a short comment describing this function
    ##Calculates the inverse of the matrix created by the prev function
    ##Checks first whether inverse exists, if so gets it else calculates and then caches it.

cacheSolve <- function(x, ...) {
        inverse <- x$getInverse();
        if(!is.null(inverse)){
            print("Getting Value from cache: ");
            return (inverse);
        }
        matr <- x$get();
        invMatr <- solve(matr,...);
        x$setInverse(invMatr);
        return (invMatr);
}
