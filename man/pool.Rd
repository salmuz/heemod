% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/survival_operations.R
\name{pool}
\alias{pool}
\alias{pool_}
\title{Pool Two or More Survival Distributions}
\usage{
pool(..., weights = 1)

pool_(dots, weights = 1)
}
\arguments{
\item{...}{Survival distributions to be used in the
projection.}

\item{weights}{A vector of weights used in pooling.}

\item{dots}{Used to work around non-standard evaluation.}
}
\value{
A \code{surv_pooled} object.
}
\description{
Pool a set of survival distributions using the specified
weights.
}
\examples{

dist1 <- define_survival(distribution = "exp", rate = .5)
dist2 <- define_survival(distribution = "gompertz", rate = .5, shape = 1)
pooled_dist <- pool(dist1, dist2, weights = c(0.25, 0.75))

}
