\name{talkers}
\alias{talkers}
\concept{talker}
\concept{speaker}
\concept{syllable}
\concept{speech}
\concept{average syllable duration}
\concept{articulation rate}
\concept{phrase}
\docType{data}
\title{
Data set of talkers of Dutch from the Netherlands.
}
\description{
This data set gives metadata (id, sex, age, region of origin) 
and speech characteristics (average syllable duration, average phrase length) 
for a stratified sample of 80 talkers of Dutch from the Netherlands. 
}
\usage{data(talkers)}
\format{
  A data frame with 80 observations on the following 6 variables.
  \describe{
    \item{\code{id}}{identifier code (from data source, see Source)}
    \item{\code{sex}}{sex (0=female, 1=male)}
    \item{\code{age}}{age (in years)}
    \item{\code{region}}{region of origin (a factor with levels \code{M}=Mid, \code{N}=North, \code{S}=South, or \code{W}=West)}
    \item{\code{syldur}}{average duration of syllables, or seconds per syllable (in seconds, excluding pause time, 1/(articulation rate) )}
    \item{\code{nsyl}}{average number of syllables per phrase, or average phrase length in syllables}
  }
}
\details{
Talkers grew up in their region of origin, and have lived and worked there as teachers of Dutch Language and Literature in secondary education.
Talkers with ages between 41 and 45 were not included in this study. 
The sample is stratified by \var{sex}, \var{region}, and (\var{age}>41) (see Examples). 

Speech data were collected from (and averaged over) a recorded interview lasting about 15 minutes. The talker and the interviewer only spoke Standard Dutch during the interview.

One talker (\code{id} 117) spoke remarkably slower than all others, yielding a very high \var{syldur}. 

The West region is commonly regarded as the linguistic center of the Netherlands. Each of the four \var{region}s has a distinct variety of Dutch. The variety of the West region is closest to the Standard Dutch spoken in the Netherlands.

Speech recordings and metadata were collected in 1999. 
}
\source{
\url{http://tla.mpi.nl/resources/data-archive/}, Corpus of Spoken Dutch
}
\references{
Oostdijk, N. (2000). The Spoken Dutch Corpus: Overview and first evaluation. In M. Gravilidou, G. Carayannis, S. Markantonatou, S. Piperidis & G. Stainhaouer (Eds.), \cite{Proceedings of the Second International Conference on Language Resources and Evaluation} (Vol. 2, pp. 887-894).

Adank, P., van Hout, R., & van de Velde, H. (2007). An acoustic description of the vowels of northern and southern Standard Dutch II: Regional varieties. \cite{Journal of the Acoustical Society of America}, 121(2), 1130-1141.

\enc{Quené}{Quene}, H. (2008). Multilevel modeling of between-speaker and within-speaker variation in spontaneous speech tempo. \cite{Journal of the Acoustical Society of America}, 123(2), 1104-1113.
}
\examples{
data(talkers)
str(talkers)
pairs( talkers[,2:6] )
with( talkers, table( sex, region, I(age>41) ) )
}
\keyword{datasets}
