% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MAlignments.R
\name{MAlignments}
\alias{MAlignments}
\alias{MAlignments-methods}
\alias{genomeCoverage}
\alias{genomeCoverage,MAlignments-method}
\alias{show,MAlignments-method}
\alias{fileName,MAlignments-method}
\alias{scanBamHeader,MAlignments-method}
\alias{readLength}
\alias{readLength,MAlignments-method}
\alias{genomeLength}
\alias{genomeLength,MAlignments-method}
\title{wrap a GAlignments for easier stats}
\usage{
MAlignments(gal, bam)

genomeCoverage(x)

\S4method{genomeCoverage}{MAlignments}(x)

\S4method{show}{MAlignments}(object)

\S4method{fileName}{MAlignments}(object)

\S4method{scanBamHeader}{MAlignments}(files)

readLength(x)

\S4method{readLength}{MAlignments}(x)

genomeLength(x)

\S4method{genomeLength}{MAlignments}(x)
}
\arguments{
\item{gal}{a GAlignments}

\item{bam}{a bam filename}

\item{x}{an MAlignments}

\item{object}{an MAlignments}

\item{files}{an MAlignments}
}
\value{
\preformatted{       an MAlignments 
}

\preformatted{     various things, as appropriate to the methods
}
}
\description{
Normally the MAlignments constructor will be called by getMT(bam).

Depending on how a generic was originally designated, the arguments to
these methods can have various argument names, but all of them tend to
take an MAlignments as their argument.
}
\examples{
library(MTseekerData)
BAMdir <- system.file("extdata", "BAMs", package="MTseekerData")
patientBAMs <- paste0(BAMdir, "/", list.files(BAMdir, pattern="^pt.*.bam$"))
mal <- getMT(patientBAMs[1])
class(mal) 
show(mal) 

}
