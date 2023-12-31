% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ClusterMatch_matching.R
\name{ClusterMatch_matching}
\alias{ClusterMatch_matching}
\title{Calculating the matching matrix between two datasets at the optimal resolutions}
\usage{
ClusterMatch_matching(
  reference_matrix,
  query_matrix,
  ref.res,
  que.res,
  ref.norm = TRUE,
  que.norm = TRUE,
  dim.pca = 50,
  dim.cca = 30,
  min.cluster.cells = 20,
  random_PCC = 0,
  min.pct = 0.25,
  logfc.threshold = 0.25
)
}
\arguments{
\item{reference_matrix}{the gene expression matrix of dataset 1}

\item{query_matrix}{the gene expression matrix of dataset 2}

\item{ref.res}{the optimal clustering resolution of dataset 1}

\item{que.res}{the optimal clustering resolution of dataset 2}

\item{ref.norm}{whether dataset 1 is normalized}

\item{que.norm}{whether dataset 2 is normalized}

\item{dim.pca}{number of PCs to calculate (50 by default)}

\item{dim.cca}{number of canonical vectors to calculate (30 by default)}

\item{min.cluster.cells}{the minimum number of cells in a cluster}

\item{random_PCC}{the minimum value of random noise}

\item{min.pct}{Seurat FindAllMarkers min.pct}

\item{logfc.threshold}{Seurat FindAllMarkers logfc.threshold}
}
\value{
a list containing the following elements:
\itemize{
\item D1_reference: SeuratObject of dataset 1
\item D2_query: SeuratObject of dataset 2
\item Matching_matrix: matching matrix, 2 is mutually most correlated clusters, 1 is mutually correlated clusters
\item strongest_matching_marker_top10: top 10 common marker genes of mutually most correlated clusters
\item com_marker_list: common marker genes of mutually most correlated clusters
\item Epsilon: random noise
\item CCA_cor: PCC between clusters based on CCA representation
\item Marker_cor：Jaccard coefficient between clusters based on CCA representation
\item ClusterMatch_cor = ClusterMatch correlation between clusters
}
}
\description{
Calculating the matching matrix between two datasets at the optimal resolutions
}
