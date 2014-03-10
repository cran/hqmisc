% File ...hqmisc/man/f2bark.Rd
\name{f2bark}
\alias{f2bark}
\alias{bark2f}
\alias{Bark}
\title{Convert between frequency in Hz and in Bark}
\concept{Bark}
\concept{barks}
\description{
  Convert between frequency in Hz and in psychoacoustic Bark units
}
\usage{
f2bark( hz )
bark2f( bark )
}
\arguments{
  \item{hz}{a frequency in Hertz (cycles per second).}
  \item{bark}{a frequency in Bark units.}
}
\value{
	Transformed value(s) in Bark or Hertz units. 
}
\details{
	These functions convert between the linear Hertz and psychoacoustic Bark scales. 
	The functions use Formula (6) of \enc{Traunmüller}{Traunmueller} (1990). 
}
\references{
	\enc{Traunmüller}{Traunmueller}, H. (1990). 
	Analytical expressions for the tonotopic sensory scale. 
	\cite{Journal of the Acoustical Society of America}, 88(1), 97-100.
}
\seealso{
  \code{\link{f2st}, \link{st2f}, \link{f2mel}, \link{mel2f}.}
}
\examples{
f2bark( c(1,3,5)*500 )
bark2f( 12 )
}
\keyword{file}
