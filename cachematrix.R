## The following functions create a matrix object, caches its inverse, and computes the inverse of the matrix. 


## The following function creates a matrix, sets and gets the value of the matrix by storing it in variable, caches its inverse value. 

makeCacheMatrix <- function(x = matrix()) {
					m <- NULL
					set <- function(y){
						x <<- y
						m <<-NULL
					}
					get <- function()x
					setInverse <- function(inverse) m <<- inverse
					getInverse <- function()m
					list(set = set, get = get,
						setInverse = setInverse,
						getInverse = getInverse)

}


## The following function checks if the inverse of the function has been calculated and stored before. If it has then it returns that value, if not then it calculates the inverse of the above created matrix and returns it. 
cacheSolve <- function(x, ...) {
				m <- x$getInverse()
				if(!is.null(m)){
					message("getting cached data")
					return(m)
				}
				mat <- x$get()
				m <- solve(mat, ...)
				x$setInverse(m)
				m
        ## Return a matrix that is the inverse of 'x'
}
