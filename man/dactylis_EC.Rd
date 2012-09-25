\name{dactylis_EC}
\alias{dactylis_EC}
\docType{data}
\title{
The orchadgrass germplasm collection
}
\description{
The orchadgrass (Dactylis glomerata L.) germplasm collection, held at Botanical Garden of Plant Breeding and Acclimatization 
Institute in Bydgoszcz, Poland. The number of accessions was limited by the availability of the data on the 8 important 
agro-morphological traits. ). The accessions were assessed in the field trials located at Botanical Garden of Plant Breeding 
and Acclimatization Institute in Bydgoszcz, Poland (53.174 N, 18.046 E) 
}
\usage{data(dactylis_EC)}
\format{
  A data frame with 1971 accessions on the following 8 variables and cllassification by UPGMA methods.
  \describe{
    \item{\code{UPGMA}}{classification accessions by UPGMA cluster analysis methods}
    \item{\code{X1}}{plant height (cm)}
    \item{\code{X2}}{inflorescence length }
    \item{\code{X3}}{leaf width (cm)}
    \item{\code{X4}}{leaf length (cm)}
    \item{\code{X5}}{total seasonal yield (kg)}
    \item{\code{X6}}{1000 kernel weight (g)}
    \item{\code{X7}}{number of days since the 1st April to inflorescence emergence}
    \item{\code{X8}}{number of days since the 1st April to inflorescence}
  }
}

\examples{
data(dactylis_EC)
summary(dactylis_EC)
}

