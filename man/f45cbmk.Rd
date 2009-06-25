\name{f45cbmk}
\alias{f45cbmk}
\docType{data}
\title{A SELDI-TOF data of 167 breast cancer and normal samples from the Miron Laboratory}
\description{
 The data consist of 167 SELDI-TOF spectra from either individuals 
 with breast cancer or without (normal controls). Two covariates
 are available. The data have been pre-processed by Ciphergen's
 software and the specific details are as follows.  The baselines 
 of the spectra were subtracted using the default parameter 
 settings of the Ciphergen software, and the spectra were 
 normalized by the total ion current normalization function of 
 the Ciphergen software. Peaks were detected with signal to noise 
 ratio (S/N) above 10. Proto-biomarkers, i.e., peaks in each 
 spectrum that have the same M/Z value, were detected with the 
 following parameters: first pass, 10 S/N, min peak threshold 
 10% of all spectra, cluster mass window: 0.3% of mass; second 
 pass, 5 S/N, and add estimated peaks to complete clusters and 
 it is the jointly normalized data that are available here. 
 The data are presented in the form of an \code{exprSet} object.
}
\usage{data(f45cbmk)}
\format{
 The different covariates are:
  \describe{
 \item{GROUP}{a character vector with four possible 
	values, "A", "B", "C" and "D".  "A" represents HER2 
	positive patients, "B" normal healthy patients, "C" 
	ER/PR positive patients and "D" samples from a single 
	healthy woman.}
  \item{SPECTRUM}{a character vector, the spectrum id of 
        each sample.}
}
}
\source{
Alex Miron's Lab at the Dana-Farber Cancer Institute.
}
\references{
Shi, Q. et al. Biomarker Discovery in Plasma Using Proteomics Analysis for
Early Detection of Breast Cancer. 2004, manuscript. 
}
\examples{
data(f45cbmk)
}
\keyword{datasets}
