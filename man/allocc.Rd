\name{allocc}
\alias{allocc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Allocation accesions
}
\description{
This function determining the numbers of entries from each cluster (from entire collection) included in a core collection. 
}
\usage{
allocc(x, groups, fraction = 0.1, method = "Pro")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
data frame including name of acessions, number of groups and value for quantitaive traits (phenotypic data)
}
  \item{groups}{
defining column where present number of groups (clusters)
}
  \item{fraction}{
defining size of core collections, as fraction of accesions from entire collection
}
  \item{method}{
string defining the allocation method. The four methods implemented
are "Pro" (propotional) , "Log" (logarytmic), "D2" (D2 alocation method) and "D3" (D3 alocation method)
}
}
\details{
Four allocation methods were used in this function. Two of these methods based on the group size, are commonly known as the proportional (Pro) and logarithmic (Log) methods. 
Franco et al. (2005) proposed allocation methods for determining the number of accessions taken from a group based on the mean of the Gower's distance between accessions within the group. 
The respective allocation methods suggested by Franco et al. (2005) are called as D2 and D3. 
The first, D2, allocation method determines that the size of the sample to be drawn from each group should be proportional to the mean squared Euclidean distance between the accessions within that group and size group.
The D3 allocation method based on proportional to the mean squared Euclidean distance between the accessions within that group and logarithm from size of the group.
}
\value{
Return a matrix of groups and numbers accesions including in core collection.
}
\references{
For information about the allocation method for developing core collection, see:

van Hintum Th., Brown A., Spillane C., Hodgkin T. 2000. Core collections of plant genetic resources. IPGRI Technical Bulletin No. 3. IPGRI, Rome

Franco J., Crossa J., Taba S., Shands H. 2005. A sampling strategy for conserving genetic diversity when forming core subsets. Crop Sci. 45:1035-1044

Studnicki, M., Madry, W., Kociuba, W. 2010. The efficiency and effectiveness of sampling strategies used to develop a core collection for the Polish spring triticale (Triticosecale Wittm.) germplasm resources. Communications in Biometry and Crop Science 5 (2), 127-137
}
\author{
Marcin Studnicki and Konrad Debski
}
\examples{
data(dactylis_EC)
allocc(dactylis_EC, dactylis_EC$UPGMA)
allocc(dactylis_EC, dactylis_EC$UPGMA, fraction = 0.15, method = 'D2')
}