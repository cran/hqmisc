% File ...hqmisc/man/is.inrange.Rd
\name{is.inrange}
\alias{is.inrange}
\title{Check whether argument is within range}
\description{
   Check whether argument \var{x} is within \var{range}.  
}
\usage{
is.inrange( x, range=c(0,1) )
}
\arguments{
  \item{x}{numerical value(s) to be evaluated.}
  \item{range}{list of two numbers defining the range used in the evaluation of \var{x}.}
}
\value{
	Logical. 
}
\details{
   The return value indicates whether \var{x} is an element of \var{[range[1], range[2]]}. 
   
Note that the range used in the evaluation includes both endpoints of the specified range.
}
\seealso{
  \code{\link{range}}.
}
\examples{
is.inrange(1/2)
is.inrange(pi, range=c(0,pi))
}
\keyword{file}
