\name{RcisTarget.hg19.motifDBs.cisbpOnly.500bp}
\docType{data}
\alias{RcisTarget.hg19.motifDBs.cisbpOnly.500bp}
\alias{hg19_500bpUpstream_motifRanking_cispbOnly}
\alias{hg19_motifAnnotation_cisbpOnly}
\title{RcisTarget motif databases for human (hg19) - Subset of 4.6k motifs}

\author{
Sara Aibar, Gert Hulselmans, Stein Aerts.
Laboratory of Computational Biology, KU Leuven Center for Human Genetics.
Leuven, Belgium.

Maintainer: Sara Aibar <sara.aibar@kuleuven.vib.be>
}
\description{
RcisTarget databases: gene-based motif rankings and their annotation to
transcription factors for Human (hg19).

For other organisms or the \bold{full databases} 
(containing ~20k motifs and search space up to 10kbp around the TSS) 
see RcisTarget tutorial.

This package contains a \emph{subset} of 4.6k motifs (cisbp motifs),
scored only within 500bp upstream and the TSS 
(source database: \code{hg19-500bp-upstream-7species.mc9nr}).
Only rankings under 5050 are kept, 
this implies that this is the maximum value to use as
\code{aucMaxRank}  in \code{calcAUC}, and as \code{maxRank} in
\code{addSignificantGenes} or \code{getSignificantGenes}.

}
\source{
This is a subset of the databases (20k motif collections) used in iRegulon
(\url{http://iregulon.aertslab.org/collections.html#motifcolldesc}).

See \emph{iRegulon} paper and documentation for \bold{details} on how the
rankings and annotations were built.
}
\references{
\emph{Janky R, Verfaillie A, Imrichova H, Van de Sande B, Standaert L,
Christiaens V, Hulselmans G, Herten K, Naval Sanchez M, Potier D, Svetlichnyy D,
Kalender Atak Z, Fiers M, Marine JM, and Aerts S}.
\bold{iRegulon: From a Gene List to a Gene Regulatory Network Using Large
Motif and Track Collections}. PLoS Comput Biol. 2014 Jul 24;10(7):e1003731.
}

\format{
This dataset contains two data objects which are meant to be used with package
\code{RcisTarget} (\url{http://bioconductor.org/packages/RcisTarget}):

\code{hg19_500bpUpstream_motifRanking_cispbOnly: }
 \bold{Motif rankings} (4.6k motifs scored within the 500 bp upstream
 of the TSS and the TSS of the gene).
\itemize{
 \item{This object is provided to RcisTarget \emph{as is}
 (e.g. not meant to be modified by the user).
 Internally, the ranking is a matrix of motifs (rows) by genes (columns).
The value in the matrix contains the ranking of the gene for each motif
(i.e. a ranking of genes per motif).}
}

\code{hg19_motifAnnotation_cisbpOnly}: \bold{Motif annotations} (data.table containing the annotation of the motif to transcription factors). 

This object is also meant to be provided to RcisTarget without modification, 
but it can also be explored by the user to obtain further information about the motifs.

Columns:
 \itemize{
 \item{\bold{motif}: }{Motif ID.}
 \item{\bold{TF}: }{Transcription factor (or inferred gene).}
 \item{\bold{directAnnotation}, \bold{inferred_Orthology}, 
 \bold{inferred_MotifSimil}: }{Boolean values indicating whether the motif is 
 annotated to the TF in the source database ("directAnnotation"), 
 or whether it was inferred by orthology ("inferred_Orthology") 
 or motif similarity ("inferred_MotifSimil").}
 \item{\bold{Description}: }{Description of the source of the annotation.}
 \item{\bold{annotationSource}: }{Source of the annotation formatted as factor 
 (e.g. for subsetting). 
 Levels: directAnnotation, inferredBy_Orthology, inferredBy_MotifSimilarity, 
 inferredBy_MotifSimilarity_n_Orthology.}
}
}

\keyword{datasets}
