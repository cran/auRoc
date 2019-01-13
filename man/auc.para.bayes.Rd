\name{auc.para.bayes}
\title{AUC by the Bayesian MCMC}
\alias{auc.para.bayes}
\description{
  Obtain the point estimate and the credible interval of the
  AUC using the Bayesian MCMC.
}
\usage{
   auc.para.bayes(x, y, conf.level=0.95, 
                  dist=c("normalDV", "normalEV", "exponential"),
                  nburn=1000, niter=10000, nthin=1, seed=100)
}
\arguments{
  \item{x}{a vector of observations from class P.}
  \item{y}{a vector of observations from class N.}
  \item{conf.level}{confidence level of the interval. The default
	is 0.95.}
  \item{dist}{the name of a parametric distribution. \code{normalEV}
	stands for normal distributions with equal variance; \code{normalDV}
	stands for normal distributions with unequal variances;
	\code{exponential} stands for exponential distributions. The default
	is \code{normalDV}. It can be abbreviated. }
  \item{nburn}{number of burn-in. The default is 1000.}
  \item{niter}{number of iterations. The default is 10000.}
  \item{nthin}{number of thinnng interval. The default is 1.}
  \item{seed}{the seed. The default is 100.}
}
\details{
  Use the Bayesian MCMC to estimate the parameters of the distributions
  and hence the AUC values.
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

} 
\author{Dai Feng}
\examples{

  #Example 1
  data(petBrainGlioma)
  y <- subset(petBrainGlioma, grade==1, select="FDG", drop=TRUE)
  x <- subset(petBrainGlioma, grade==2, select="FDG", drop=TRUE)
  auc.para.bayes(x, y, dist="exp")

   
  #Example 2
  data(petBrainGlioma)
  y <- subset(petBrainGlioma, grade==1, select="ACE", drop=TRUE)
  x <- subset(petBrainGlioma, grade==2, select="ACE", drop=TRUE)
  auc.para.bayes(x, y, dist="normalDV")
  


}
\keyword{htest}



