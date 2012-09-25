\name{randomcc}
\alias{randomcc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Random selection of core collections
}
\description{
This function developing core collection use random sampling methods. 
}
\usage{
randomcc(x, fraction = 0.1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
data frame including value of quantitaive traits (phenotypic data)
}
  \item{fraction}{
defining size of core collections, as fraction of accesions from entire collection
}
}
\value{
Return a data frame including selected to core collection acessions 
}
\references{
For information about the random method used to developing core collection, see:

van Hintum Th., Brown A., Spillane C., Hodgkin T. 2000. Core collections of plant genetic resources. IPGRI Technical Bulletin No. 3. IPGRI, Rome

}
\author{
Marcin Studnicki and Konrad Debski
}
\examples{
data(dactylis_EC)
randomcc(dactylis_EC)
randomcc(dactylis_EC, fraction = 0.2)
}
