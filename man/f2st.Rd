% File ...hqmisc/man/f2st.Rd
\name{f2st}
\alias{f2st}
\alias{st2f}
\alias{semitone}
\title{Convert between frequency in Hz and in semitones}
\concept{semitone}
\concept{semitones}
\concept{octave}
\description{
  Convert between frequency in Hz and in semitones, relative to baseline frequency in Hz. 
}
\usage{
f2st( hz, base=50 )
st2f( st, base=50 )
}
\arguments{
  \item{hz}{a frequency in Hertz (cycles per second).}
  \item{st}{a frequency in semitones relative to the base frequency.}
  \item{base}{the baseline frequency (in Hertz units) relative to which semitones are expressed.}
}
\value{
	Transformed value(s) in semitones or in Hertz (cycles per second). 
}
\details{
	These functions convert between the linear Hertz and logarithmic semitone scales. 
	A doubling of the frequency in Hz equals 12 semitones or 1 octave. 
	
	Function \code{f2st} was based on function \code{h2st} by Mark Liberman \cr
	(last seen at http://ldc.upenn.edu/myl/llog/semitones.R but no longer available online). \cr
	Function \code{st2f} was based on a conversion script by Jan Roelof de Pijper \cr
	(last seen at http://users.abo.fi/jtuomain/speech/semitone.html but no longer available online). 
	
	For frequencies in Hz of musical notes, 
	see e.g. \url{http://www.phy.mtu.edu/~suits/notefreqs.html}.
}
\seealso{
  \code{\link{f2bark}, \link{bark2f}, \link{f2mel}, \link{mel2f}.}
}
\examples{
# distance in semitones between target and baseline frequencies in Hz.
f2st( 440, base=110 )

# frequency in Hz of a tone that is +24 semitones distant 
# from the baseline, i.e. a distance of +two octaves.
st2f( 24 ) 
}
\keyword{file}
