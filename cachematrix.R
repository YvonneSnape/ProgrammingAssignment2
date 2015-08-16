## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

<<<<<<< HEAD
makeCacheMatrix <- function(x = matrix())  {
=======
makeCacheMatrix <- function(x = matrix()) {
>>>>>>> FETCH_HEAD
  inverse <- null      ## initially assigning 'null' to nverse
  set_matrix <- function(y){
    x<<-y          ## setting the matrix 'x'
    inverse<<-null
  }
  get_matrix<- function() x        ## returning matrix 'x'
  set_inverse <-function(solve) inverse <<-solve    ## cache the value of the inverse
  get_inverse <- function() inverse               ## returning inverse
  list(set_matrix = set_matrix, get_matrix = get_matrix,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$get_inverse()   ## getting inverse
  if(!is.null(inverse)){       ## checking for the presence of inverse
    message("getting cached data")  ## displaying message
    return(inverse)
  }
  data<-x$get_matrix()          ## getting matrix
  inverse <- solve(data, ...)   ## using solve() to compute inverse
  x$set_inverse(inverse)        ## to cache the inverse
  inverse                       ## returning the inverese
<<<<<<< HEAD
}
=======
}
>>>>>>> FETCH_HEAD
