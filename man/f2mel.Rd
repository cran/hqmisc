% File ...hqmisc/man/f2mel.Rd
\name{f2mel}
\alias{f2mel}
\alias{mel2f}
\alias{mel}
\title{Convert between frequency in Hz and in mel units}
\concept{Mel}
\description{
  Convert between frequency in Hz and in psychoacoustic mel units.
}
\usage{
f2mel( hz )
mel2f( mel )
}
\arguments{
  \item{hz}{a frequency in Hertz (cycles per second).}
  \item{mel}{a frequency in mel units.}
}
\value{
	Transformed value(s) in mel or hertz units. 
}
\details{
	These functions convert between the linear Hertz and psychoacoustic Mel scales. 
	The functions use formulas provided by Rietveld & Van Heuven (2009).
   
   A frequency of 1000 Hz equals 1000 mel. 
   For frequencies below 1000 Hz the mel scale is approximately linear;
   for frequencies above 1000 Hz the mel scale is approximately logarithmic. 
}
\references{
   Rietveld, A. C. M., & Van Heuven, V. J. (2009). 
   \cite{Algemene Fonetiek} (3rd ed.). Bussum: Coutinho.
}
\seealso{
  \code{\link{f2st}, \link{st2f}, \link{f2bark}, \link{bark2f}.}
}
\examples{
f2mel( seq( 250, 1000, by= 250) )
f2mel( seq(1000, 3000, by=1000) )
mel2f( seq( 500, 2500, by= 500) )
}
\keyword{file}
