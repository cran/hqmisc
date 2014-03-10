% File ...hqmisc/man/bracket.Rd
\name{bracket}
\alias{bracket}
\title{Add rectangular bracket to plot}
\description{
  Add a rectangular bracket to the most recent plot. 
  This bracket may be used to loosely connect points or bars in a plot,
  to attract the viewer's attention to these connected points or bars. 
}
\usage{
bracket( x0, y0, x1=x0, y1=y0, 
         offset=1, length=offset/2, 
         side=1, col="grey", \dots )
}
\arguments{
  \item{x0, y0}{coordinates of points \bold{from} which to draw bracket.}
  \item{x1, y1}{coordinates of points \bold{to} which to draw bracket.}
  \item{offset}{offset or distance of bracket from specified coordinates;
  	the direction of the offset depends on \option{side}. 
  	The offset must be specified in data units of the appropriate dimension of the plot.}
  \item{length}{the length of the whiskers of the bracket.}
  \item{side}{the side, relative to the specified coordinates,
  	on which to draw the bracket; 1=below, 2=left, 3=above, 4=right.}
  \item{col}{the color in which to draw the bracket.}
  \item{\dots}{other graphical parameters to be passed on (see \link{par}), 
  	such as \code{lty}, \code{lwd}.}
}
\value{
	None; a bracket is added to the existing plot.  
}
\details{
  	If \option{offset} is positive (the default), 
   then positive values of \option{length} (the default) 
   result in inside whiskers, towards the specified coordinates, 
   and negative values of \option{length} result in 
  	outside whiskers, away from the specified coordinates. 

  	The value for \option{side} must be specified as 
   an integer number; values other than 1:4 will be ignored. 
}
\seealso{
  \code{\link{segments}, \link{par}.}
}
\examples{
plot( 1:9, 1:9 )
bracket( x0=4, x1=6, y0=3, side=1 )
bracket( x0=3, y0=4, y1=6, side=2, offset=1, length=1, lty=2 )
bracket( x0=4, x1=6, y0=7, side=3, col="red" )
# negative length: whiskers outside
bracket( x0=7, y0=4, y1=6, side=4, offset=0, length=-1 ) 
}
\keyword{file}
