\name{auc.nonpara.mw}
\title{AUC Based on the Mann-Whitney Statistic}
\alias{auc.nonpara.mw}
\description{
  Obtain the point estimate and the confidence interval of the
  AUC by various methods based on the Mann-Whitney statistic.
}
\usage{
   auc.nonpara.mw(x, y, conf.level=0.95, 
                  method=c("newcombe", "pepe", "delong", "DL.corr",
                           "jackknife", "bootstrapP", "bootstrapBCa"), 
                  nboot)
}
\arguments{
  \item{x}{a vector of observations from class P.}
  \item{y}{a vector of observations from class N.}
  \item{conf.level}{confidence level of the interval. The default
	is 0.95.}
  \item{method}{a method used to construct the CI. \code{newcombe} is
	the method recommended in Newcombe (2006); \code{pepe} is the method
	proposed in Pepe (2003); \code{delong} is the method proposed in
	Delong et al. (1988); \code{DL.corr} is a method proposed in Perme and Manevski (2018);
	\code{jackknife} uses the
	jackknife method; \code{bootstrapP} uses the bootstrap with
	percentile CI; \code{bootstrapBCa} uses bootstrap with
	bias-corrected and accelerated CI. The default is \code{newcombe}. It can be abbreviated.}
  \item{nboot}{number of bootstrap iterations.}
}
\details{
  The function implements various methods based on the Mann-Whitney statistic.
}
\note{
  The observations from class P tend to have larger values then that from
  class N.
 }
 \value{
    Point estimate and lower and upper bounds of the CI of the AUC. 

 }
\references{
  Elizabeth R Delong, David M Delong, and Daniel L Clarke-Pearson (1988)
  Comparing the areas under two or more correlated receiver operating characteristic curves: a nonparametric approach.
  \emph{Biometrics}
  \bold{44} 837-845
  
  Dai Feng, Giuliana Cortese, and Richard Baumgartner (2017)
  A comparison of confidence/credible interval methods for
  the area under the ROC curve for continuous diagnostic tests
  with small sample size.
  \emph{Statistical Methods in Medical Research}
  \bold{26(6)} 2603-2621
  DOI: 10.1177/0962280215602040

  Robert G Newcombe (2006)
  Confidence intervals for an effect size measure based on the Mann-Whitney statistic. Part 2: asymptotic methods and evaluation.
  \emph{Statistics in Medicine}
  \bold{25(4)} 559-573

  Margaret Sullivan Pepe (2003)
  The statistical evaluation of medical tests for classification and prediction.
  \emph{Oxford University Press}
  
  Maja Pohar Perme and Damjan Manevski (2018)
  Confidence intervals for the Mann-Whitney test.
  \emph{Statistical Methods in Medical Research}
  DOI: 10.1177/0962280218814556
  
}
\author{Dai Feng, Damjan Manevski, Maja Pohar Perme}
\examples{

  data(petBrainGlioma)
  y <- subset(petBrainGlioma, grade==1, select="FDG", drop=TRUE)
  x <- subset(petBrainGlioma, grade==2, select="FDG", drop=TRUE)
  auc.nonpara.mw(x, y)
  auc.nonpara.mw(x, y, method="delong")
}
\keyword{htest}



