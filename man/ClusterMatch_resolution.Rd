% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ClusterMatch_resolution.R
\name{ClusterMatch_resolution}
\alias{ClusterMatch_resolution}
\title{Calculating the optimal clustering resolutions for two datasets.}
\usage{
ClusterMatch_resolution(
  reference_matrix,
  query_matrix,
  ref.norm = TRUE,
  que.norm = TRUE,
  start.resolution = 0.1,
  end.resolution = 5,
  step = 0.1,
  dim.pca = 50,
  dim.cca = 30,
  min.cluster.cells = 20
)
}
\arguments{
\item{reference_matrix}{the gene expression matrix of dataset 1}

\item{query_matrix}{the gene expression matrix of dataset 2}

\item{ref.norm}{whether dataset 1 is normalized}

\item{que.norm}{whether dataset 2 is normalized}

\item{start.resolution}{starting resolution}

\item{end.resolution}{ending resolution}

\item{step}{step size between starting resolution and ending resolution}

\item{dim.pca}{number of PCs to calculate (50 by default)}

\item{dim.cca}{number of canonical vectors to calculate (30 by default)}

\item{min.cluster.cells}{the minimum number of cells in a cluster}
}
\value{
a list containing the following elements:
\itemize{
\item Resolution_cor: The average PCC of mutually most correlated clusters
\item D1_ref_res: Optimal resolution for dataset 1
\item D2_que_res: Optimal resolution for dataset 2
}
}
\description{
Calculating the optimal clustering resolutions for two datasets.
}
