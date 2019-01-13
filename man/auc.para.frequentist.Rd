\name{auc.para.frequentist}
\title{AUC by Frequentist Parametric Methods}
\alias{auc.para.frequentist}
\description{
  Obtain the point estimate and the confidence interval of the
  AUC using some frequentist parametric methods.
}
\usage{
   auc.para.frequentist(x, y, conf.level=0.95, 
                        dist=c("normalDV", "normalEV", "exponential"),
                        method=c("lrstar", "lr", "wald", "RG1", "RG2"))
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
	is \code{normalDV}. It can be abbreviated.}
  \item{method}{a method used to construct the CI. \code{lrstar} uses
	the likelihood ratio test based on higher-order asymptotic
	results;
	\code{lr} uses the signed log-likelihood ratio test; \code{wald}
	uses the Wald test; \code{RG1} is the approximate "t" solution to
	the Behrens-Fisher problem;
	\code{RG2} is the normal approximation to \code{RG1}. \code{RG1} and
	\code{RG2} are for normal distributions.
	The default	is \code{lrstar}. It can be abbreviated.}
}
\details{
  Use a variety of frequentist methods for different parametric models
  to estimate the AUC.
}
\note{
  The observations from class P tend to have larger values then that from
  class N.
 }
 \value{
    Point estimate and lower and upper bounds of the CI of the AUC. 

 }
 \references{
 Giuliana Cortese and Laura Ventura (2013)
 Accurate higher-order likelihood inference on P({Y < X).
 \emph{Computational Statistics}
 \bold{28(3)} 1035-1059


  Dai Feng, Giuliana Cortese, and Richard Baumgartner (2015)
  A comparison of confidence/credible interval methods for
  the area under the ROC curve for continuous diagnostic tests
  with small sample size.
  \emph{Statistical Methods in Medical Research}
  DOI: 10.1177/0962280215602040

  Benjamin Reiser and Irwin Guttman (1986)
  Statistical inference for Pr(Y < X): The normal case.
  \emph{Technometrics}
  \bold{28(3)} 253-257
}
  

} 
\author{Dai Feng}
\examples{

  #Example 1
  data(petBrainGlioma)
  y <- subset(petBrainGlioma, grade==1, select="FDG", drop=TRUE)
  x <- subset(petBrainGlioma, grade==2, select="FDG", drop=TRUE)
  auc.para.frequentist(x, y, dist="exp")

   
  #Example 2
  data(petBrainGlioma)
  y <- subset(petBrainGlioma, grade==1, select="ACE", drop=TRUE)
  x <- subset(petBrainGlioma, grade==2, select="ACE", drop=TRUE)
  auc.para.frequentist(x, y, method="RG1")
  


}
\keyword{htest}



