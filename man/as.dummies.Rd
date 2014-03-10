% File ...hqmisc/man/as.dummies.Rd
\name{as.dummies}
\alias{as.dummies}
\concept{dummies}
\concept{dummy}
\title{Create matrix of dummy vectors from single factor}
\description{
  Create a matrix of dummy vectors (consisting of 0 and 1 only) from factor \var{x}. 
  This may be useful if you want to use dummy predictors 
  in regression analysis. 
}
\usage{
as.dummies ( x )
}
\arguments{
  \item{x}{input factor. \cr
  If the argument is not a factor, the function stops with a message.}
}
\value{
	Matrix of integer values 0 or 1. 
	The number of rows of the returned matrix equals the length of the input factor, 
	and the number of columns equals the number of levels of the input factor.   
}
\details{
	Levels of the input factor correspond with columns in the output matrix. 
	The integer value in cell [i,j] of the returned matrix indicates 
   whether (value=1) or not (value=0)
	the i'th observation in the input factor \var{x} has the value of 
   the j'th level of that factor.  
}
\seealso{
  \code{\link{levels}}, \code{\link{matrix}}.
}
\examples{
xf <- factor( rep(letters[1:3],each=2) )
as.dummies(xf)
}
\keyword{file}