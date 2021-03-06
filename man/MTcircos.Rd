% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MTcircos.R, R/genMTcircos.R
\name{MTcircos}
\alias{MTcircos}
\alias{genMTcircos}
\alias{initMTcircos}
\alias{genesMTcircos}
\title{plot a canonical human (or, in principle, any) mitochondrial genome}
\usage{
MTcircos(
  variants = NULL,
  outside = NULL,
  inside = NULL,
  outcol = NULL,
  incol = NULL,
  anno = NULL,
  how = c("matrix", "AA"),
  ...
)

genMTcircos(mvr)

initMTcircos(x)

genesMTcircos(x, anno, legends = F)
}
\arguments{
\item{variants}{optional MVRanges or MVRangesList to split by strand & plot}

\item{outside}{optional MVRanges or MVRangesList to plot outside the circle}

\item{inside}{optional MVRanges or MVRangesList to plot inside the circle}

\item{outcol}{optional color assignment function or matrix for outside}

\item{incol}{optional color assignment function or matrix for inside}

\item{anno}{a GRanges with annotations}

\item{how}{optional specification for how to plot multiple samples}

\item{...}{other arguments to pass on to called functions}

\item{x}{something with a genome()}

\item{legends}{plot legends? (FALSE)}
}
\value{
\preformatted{     invisibly, a list: `anno` (data.frame) + `pfun` (panel.fun)
}

\preformatted{   annotations
}
}
\description{
The default font sizes, orientations, etc. are optimized for a "cold" start;
if you want to fiddle with the details, crack open the code and modify it...
or alternatively, add sectors/dendrograms inside of this "framed" version.
}
\examples{

library(MTseekerData)
BAMdir <- system.file("extdata", "BAMs", package="MTseekerData")
BAMs <- paste0(BAMdir, "/", list.files(BAMdir, pattern="^pt.*bam$"))
(mvr <- filterMTvars(pileupMT(BAMs[1], ref="rCRS")))
MTcircos(mvr)
title("Mitochondrial variants in a leukemia patient's blast cell")

}
