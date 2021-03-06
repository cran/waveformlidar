% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/decom.adaptive.R
\name{decom.adaptive}
\alias{decom.adaptive}
\title{decom.adaptive}
\usage{
decom.adaptive(x, smooth = TRUE, thres = 0.22, width = 3)
}
\arguments{
\item{x}{is a waveform with a index at the begining and followed with intensities.}

\item{smooth}{is tell whether you want to smooth the waveform to remove some obvious outliers. Default is TRUE.}

\item{thres}{is to determine if the detected peak is the real peak whose intensity should be higher than threshold*maximum intensity. Default is 0.22.}

\item{width}{width of moving window.Default is 3, must be odd integer between 1 and n.This parameter ONLY work when the smooth is TRUE.}
}
\value{
A list contains estimates of A, u, sig and ri (rate parameter in adaotive Gaussian function) after decomposition.
}
\description{
The function allows you to eatimate parameters charcterizing waveforms and to pave the way for generating waveform-based point cloud.
}
\examples{
##import return waveform data
data(return)
lr<-nrow(return)
ind<-c(1:lr)
return<-data.frame(ind,return)
x<-return[1,] ###must be a dataset including intensity with index at the beginning.
r1<-decom(x)

r2<-decom.adaptive(x)

\donttest{
# for the whole dataset
dr3<-apply(return[50:200, ],1,decom.adaptive)
}
}
\references{
Tan Zhou, and Sorin C. Popescu, 2017. Bayesian decomposition of full waveform LiDAR data with uncertainty analysis.
  Remote Sensing of Environment 200 (2017): 43-62.
}
