\name{auc.nonpara.kernel}
\title{AUC by Kernel Methods}
\alias{auc.nonpara.kernel}
\description{
  Obtain the point estimate and the confidence interval of the
  AUC using kernel methods.
}
\usage{
   auc.nonpara.kernel(x, y, conf.level=0.95,
                      integration=c("FALSE","TRUE"),
                      bw=c("nrd0", "sj"), nint=512,
                      method=c("mw", "jackknife", "bootstrapP", "bootstrapBCa"),
                      nboot)
}
\arguments{
  \item{x}{a vector of observations from class P.}
  \item{y}{a vector of observations from class N.}
  \item{conf.level}{confidence level of the interval. The default
	is 0.95.}
  \item{integration}{a logical value. If its value is \code{FALSE} then
        the results are based on the kernel estimates of the CDF;
		otherwise the PDF. The default values is \code{FALSE}.}
  \item{bw}{method used for bandwidth selection. \code{nrd0}
		uses a rule-of-thumb for choosing the bandwidth of a Gaussian
		kernel density estimation; \code{sj} uses the method of
		Sheather & Jones (1991). The default if \code{nrd0}.}	  
  \item{nint}{the number of equally spaced points at which the
		density is to be estimated. The default if 512.}	  
  \item{method}{a method used to construct the CI. \code{mw} uses the sd
    based on the Mann-Whitney statistic; \code{jackknife} uses the
	jackknife method; \code{bootstrapP} uses the bootstrap with
	percentile CI; \code{bootstrapBCa} uses bootstrap with
	bias-corrected and accelerated CI. The default is \code{mw}. It can be abbreviated.}
  \item{nboot}{number of bootstrap iterations.}
}
\details{
  The AUC essentially depends on the CDFs of two classes N and P.
  We could use kernel smoothing methods to obtain the CDFs.
  The methods implemented in this function construct the CI based on two
  different strategies: the first uses kernel smoothing
  to estimate the PDFs and then the CDFs;  and the second starts from
  the estimate of the CDFs directly. Gaussian kernel is used.
  
  
}
\note{
  The observations from class P tend to have larger values then that from
  class N.
 }
 \value{
    Point estimate and lower and upper bounds of the CI of the AUC. 

 }
\references{
  Dai Feng, Giuliana Cortese, and Richard Baumgartner (2015)
  A comparison of confidence/credible interval methods for
  the area under the ROC curve for continuous diagnostic tests
  with small sample size.
  \emph{Statistical Methods in Medical Research}
  DOI: 10.1177/0962280215602040


  Simon Sheather and Michael Jones (1991)
  A reliable data-based bandwidth selection method for kernel density estimation.
  \emph{Journal of the Royal Statistical Society. Series B (Methodological)}
  \bold{53} 683-690
  
} 
\examples{

  #Example 1
  data(petBrainGlioma)
  y <- subset(petBrainGlioma, grade==1, select="FDG", drop=TRUE)
  x <- subset(petBrainGlioma, grade==2, select="FDG", drop=TRUE)
  auc.nonpara.kernel(x, y)

   
  \dontrun{
  #Example 2
  data(petBrainGlioma)
  y <- subset(petBrainGlioma, grade==1, select="ACE", drop=TRUE)
  x <- subset(petBrainGlioma, grade==2, select="ACE", drop=TRUE)
  auc.nonpara.kernel(x, y, integration="TRUE",
                     bw="sj",  method="bootstrapBCa", nboot=999)
  }


}
\keyword{htest}



