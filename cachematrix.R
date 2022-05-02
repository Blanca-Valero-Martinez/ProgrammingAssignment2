## Put comments here that give an overall description of what your
## functions do
# the aim of these functions is
        # 1) to creates a list containing the different tools(funtions) needed to calculate the inverse of a matrix contained in the environment
        # 2) to do point 1 avoiding extra calculations if it has been previously done

## Write a short comment describing this function
#fullfills point 1
makeCacheMatrix <- function(x = matrix()) {
          inverse<- NULL
          #set value of the matrix
          setmatrix<-function(y){
              x<<-y
              inverse<<-NULL
          }
          #gets value of matrix
          getmatrix<-function() x
          #sets inverse of the matrix
          setinverse<-function(solve) inverse<<-solve
          #gets the inverse of the matrix
          getinverse<-function()inverse

          list(set=setmatrix,get=getmatrix,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function
#fullfills point 2
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inverse<-x$getinverse()
         if(!is.null(inverse)){
              message("getting cached data")
              return(inverse)
         }
         data<-x$get()
         inverse<-solve(data,...)
         x$setinverse(inverse)
         inverse
}
