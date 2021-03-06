% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stepwiseqtlM.R
\name{stepwiseqtlM}
\alias{stepwiseqtlM}
\title{Stepwise selection for multiple QTL in function valued trait data}
\usage{
stepwiseqtlM(
  cross,
  chr,
  Y,
  qtl,
  formula,
  max.qtl = 10,
  incl.markers = TRUE,
  refine.locations = TRUE,
  penalties,
  additive.only = TRUE,
  keeptrace = FALSE,
  verbose = TRUE,
  method = c("hk", "f", "sl", "ml"),
  pheno.cols
)
}
\arguments{
\item{cross}{An object of class \code{"cross"}. See \code{\link[qtl]{read.cross}} for details.}

\item{chr}{Optional vector indicating the chromosomes to consider in search
for QTL.  This should be a vector of character strings referring to
chromosomes by name; numeric values are converted to strings.  Refer to
chromosomes with a preceding \code{"-"} to have all chromosomes but those
considered.  A logical (TRUE/FALSE) vector may also be used.}

\item{Y}{Demension reduced data set. getY(cross) get reduced data set using
PCA.}

\item{qtl}{Optional QTL object (of class \code{"qtl"}, as created by \code{\link[qtl]{makeqtl}})
to use as a starting point.}

\item{formula}{Optional formula to define the QTL model to be used as a
starting point.}

\item{max.qtl}{Maximum number of QTL to which forward selection should
proceed.}

\item{incl.markers}{If FALSE, do calculations only at points on an evenly
spaced grid.}

\item{refine.locations}{If TRUE, use 'refineqtl' to refine the QTL locations
after each step of forward and backward selection.}

\item{penalties}{Vector of three values indicating the penalty on main
effects and heavy and light penalties on interactions.  See the Details
below. If missing, default values are used that are based on simulations of
backcrosses and intercrosses with genomes modeled after that of the mouse.}

\item{additive.only}{If TRUE, allow only additive QTL models; if FALSE,
consider also pairwise interactions among QTL.}

\item{keeptrace}{If TRUE, keep information on the sequence of models visited
through the course of forward and backward selection as an attribute to the
output.}

\item{verbose}{If TRUE, give feedback about progress.  If 'verbose' is an
integer > 1, even more information is printed.}

\item{method}{which criteria to use: \code{"hk"}, \code{"f"}, \code{"sl"}, or \code{"ml"}.}

\item{pheno.cols}{Columns in the phenotype matrix to be used as the
phenotype.}
}
\value{
The output is a representation of the best model, as measured by the
penalized LOD score (see Details), among all models visited.  This is QTL
object (of class \code{"qtl"}, as produced by \code{\link[qtl]{makeqtl}}), with attributes
\code{"formula"}, indicating the model formula, and \code{"pLOD"} indicating the
penalized LOD score.

If \code{keeptrace=TRUE}, the output will contain an attribute \code{"trace"}
containing information on the best model at each step of forward and
backward elimination.  This is a list of objects of class \code{"compactqtl"},
which is similar to a QTL object (as produced by \code{\link[qtl]{makeqtl}}) but containing
just a vector of chromosome IDs and positions for the QTL.  Each will also
have attributes \code{"formula"} (containing the model formula) and \code{"pLOD"}
(containing the penalized LOD score.
}
\description{
Extension of the R/qtl function \code{\link[qtl]{stepwiseqtl}}. Performs
forward/backward selection to identify a multiple QTL model for function
valued trait data, with model choice made via a penalized LOD score, with
separate penalties on main effects and interactions.
}
\examples{
cat("An example needs to be added.\n")
}
\references{
Manichaikul, A., Moon, J. Y., Sen, S, Yandell, B. S. and Broman,
K. W. (2009) A model selection approach for the identification of
quantitative trait loci in experimental crosses, allowing epistasis.
_Genetics_, *181*, 1077-1086.

Broman, K. W. and Speed, T. P. (2002) A model selection approach for the
identification of quantitative trait loci in experimental crosses (with
discussion). _J Roy Stat Soc B_ *64*, 641-656, 731-775.

Haley, C. S. and Knott, S. A. (1992) A simple regression method for mapping
quantitative trait loci in line crosses using flanking markers.  _Heredity_
*69*, 315-324.

Sen, S. and Churchill, G. A. (2001) A statistical framework for quantitative
trait mapping.  _Genetics_ *159*, 371-387.

Zeng, Z.-B., Kao, C.-H. and Basten, C. J. (1999) Estimating the genetic
architecture of quantitative traits.  _Genetical Research_, *74*, 279-289.
}
\seealso{
\code{\link{refineqtlF}}, \code{\link{addqtlF}}
}
\author{
Il-Youp Kwak, <email: ikwak2@stat.wisc.edu>
}
