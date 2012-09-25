\name{stratcc}
\alias{stratcc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Stratified selection of core collections
}
\description{
This function developing core collection use stratified sampling methods. 

}
\usage{
stratcc(x, groups, alloc = "Pro", fraction = 0.1, clustering = FALSE, cluster_method = "ward")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
data frame including classifications of accessions (number of groups) and value quantitaive traits (phenotypic data)
}
  \item{groups}{
defining column where present classifications of accessions (groups)
}
  \item{alloc}{
string defining the allocation method. The four methods implemented
are "Pro" (propotional) , "Log" (logarytmic), "D2" (D2 alocation method) and "D3" (D3 alocation method)
}
  \item{fraction}{
defining size of core collections, as fraction of accesions from entire collection
}
  \item{clustering}{
if TRUE to selecting acessions in group used clustered sampling method. If FALSE to sample of accessions in group used random sampling method.
}
  \item{cluster_method}{
when clustering=TRUE defining cluster analysis methods. 
}
}
\details{
The first step of stratified methods in the development of core collections is stratification (grouping, classification). 
The next step was allocation, i.e. determining the number of entries from each cluster (group) included in a core collection. 
The third, final, step of stratified methods is selection of accesions. 
Two sampling methods were used. These are random and clustered sampling methods. The random sampling method was based on a simple random sample of accessions in each group (van Hintum et al. 2000). 
The clustered sampling method is a non-random (restricted-random) sampling method which involves dividing accessions in each group into homogeneous subgroups by cluster analysis.
The number of subgroups for a group was specified in an allocation method and was equal to the nt number of accessions from this group being selected to a core. 
From each subgroup containing more accessions only one of them was randomly selected to a core subset and from each one-entry subgroup just this accession was selected.
}
\value{
Return a data frame including selected to core collection acessions 
}
\references{
For information about the stratified method used to developing core collection, see:

van Hintum Th., Brown A., Spillane C., Hodgkin T. 2000. Core collections of plant genetic resources. IPGRI Technical Bulletin No. 3. IPGRI, Rome

Franco J., Crossa J., Taba S., Shands H. 2005. A sampling strategy for conserving genetic diversity when forming core subsets. Crop Sci. 45:1035-1044

Studnicki, M., Madry, W., Kociuba, W. (2010). The efficiency and effectiveness of sampling strategies used to develop a core collection for the Polish spring triticale (Triticosecale Wittm.) germplasm resources. Communications in Biometry and Crop Science 5 (2), 127-137
}
\author{
Marcin Studnicki and Konrad Debski
}

\seealso{\code{\link{allocc}}}
\examples{
data(dactylis_EC)
stratcc(dactylis_EC, dactylis_EC$UPGMA)
stratcc(dactylis_EC, dactylis_EC$UPGMA, clustering = TRUE, cluster_method = "average")
}
