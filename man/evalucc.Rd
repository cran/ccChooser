\name{evalucc}
\alias{evalucc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Evaluation of core collection.
}
\description{
This function evaluation efficiency of the new core collection, using the four parameters.
}
\usage{
evalucc(CC, EC)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{CC}{
data frame including value of quantitaive traits (phenotypic data) for core collection
}
  \item{EC}{
data frame including value of quantitaive traits (phenotypic data) for entire collection
}
}
\details{
The DD% index is the difference between mean squared Euclidean distance among accessions in a core and in the entire collection, relatively to that in the entire collection.  
The MD% index refers to the average of absolute differences between means across all of the traits in the core and entire collections relative to the means in the entire collection (Kim et al., 2007). 
The VD% index is the average of the absolute differences between variances across all of the traits in the core and entire collections relative to the variances in the entire collection.}
The RR% index is coincidence rate of range (Wang et al. 2007)
}
\value{
Return a matrix present a value of four parameters- DD%, MD%, VD%, RR%
}
\references{
For information about the evaluation of core collection, see:

Franco J., Crossa J., Taba S., Shands H. 2005. A sampling strategy for conserving genetic diversity when forming core subsets. Crop Sci. 45:1035-1044

Hu J., Zhu J., Xu H.M. 2000. Methods of constructing core collections by stepwise clustering with three sampling strategies based on the genotypic values of crops. Theoretical and Applied Genetics 101:264-268

Kim K.W., Chung H.K., Cho G.T., Ma K.H., Chandrabalan D., Gwag J.G., Kim T.S., Cho E.G., Park Y.J. 2007. PowerCore: a program applying the advanced M strategy with a heuristic search for establishing core sets. Bioinformatics 23:2155-2162

Studnicki, M., Madry, W., Kociuba, W. 2010. The efficiency and effectiveness of sampling strategies used to develop a core collection for the Polish spring triticale (Triticosecale Wittm.) germplasm resources. Communications in Biometry and Crop Science 5:127-137

Wang J., Hu J., Zhang C.F., Zhang S. 2007. A strategy on constructing core collections by least distance stepwise sampling. Theoretical and Applied Genetics 15:1-8
}
\author{
Marcin Studnicki and Konrad Debski
}
\examples{
data(dactylis_CC)
data(dactylis_EC)
dactylis_EC<-subset(dactylis_EC, select= -UPGMA)
evalucc(dactylis_CC, dactylis_EC)
}
