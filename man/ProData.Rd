\name{ProData}
\alias{ProData}
\docType{data}
\title{A SELDI-TOF data of 167 breast cancer and normal spectra}
\description{
This library contains both the raw spectra and the proto-biomarker 
data pre-processed by Ciphergen's software of the 167 samples. 
Those one hundred and sixty seven samples are collected from
155 subjects in CPT tubes with plasma isolated and
stored in -80C until needed. Among the 167 samples, 55 are HER2
positive (A), 64 are normal healthy women (B), 35 are ER/PR
positive (mostly) (C) and 13 samples are from a single healthy
woman. Samples in group D are the only ones from a single
subject, all the other samples represent draws from individual
subjects.  Samples were thawed
and aliquoted into 100ul vials. The samples were fractionated to
simplify the proteome into sub-proteomes. 
The fractions 4 and 5 (f45) were processed by the Ciphergen 
IMAC protocol with EAM of CHCA. 

Information on the spectrum
ID and the pheotype information is stored in the \code{exprSet}
{\tt f45cbmk}, the proto-biomakers pre-processed by Ciphergen's
software.

As an alternative, package \code{PROcess} may be used for 
pre-processing of the raw spectra to get a set of proto-biomarkers. 
}
\source{
Alex Miron's Lab at the Dana-Farber Cancer Institute.
}
\examples{

# plot a raw spectrum
f45c <- system.file("f45c", package="ProData")
fs <- dir(f45c,full.names=TRUE)
plot(read.csv(gzfile(fs[1])), type="l")

# find out sizes of phenotype groups:
library(Biobase)
data(f45cbmk)
SpecGrp <- pData(f45cbmk)
table(SpecGrp[,1])
}
\keyword{datasets}
