% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FlexTablePublicAPI.R
\name{[<-.FlexTable}
\alias{[<-.FlexTable}
\alias{alterFlexTable}
\title{alter FlexTable content and format}
\usage{
\method{[}{FlexTable} (x, i, j, text.properties,
  newpar = FALSE, byrow = FALSE, to = "body", side = "top") <- value
}
\arguments{
\item{x}{the \code{FlexTable} object}

\item{i}{vector (integer index, row.names values or boolean vector) for rows selection.}

\item{j}{vector (integer index, col.names values or boolean vector) for columns selection.}

\item{text.properties}{formatting properties (an object of class \code{textProperties}).
Used only when \code{value} is a \code{data.frame}, a \code{maxtrix} or a vector. It
will be used to format added text.}

\item{newpar}{logical value specifying wether or not the content should be added
as a new paragraph (therefore added on a new line).}

\item{byrow}{logical. If \code{FALSE} (the default) content is added by columns
, otherwise content is added by rows.}

\item{to}{specify on which part of the FlexTable to apply the \code{value}, must be one of the following
values \dQuote{body} (default) or \dQuote{header} or \dQuote{footer}}

\item{side}{used only when value is a \code{\link{borderProperties}}, specify on which side to
apply the properties. It must be one of \dQuote{bottom}, \dQuote{top}, \dQuote{left}, \dQuote{right}.}

\item{value}{see details.}
}
\description{
add text or format a FlexTable object.
}
\details{
Use \code{ft_object[1:4, 2:3] <- value} to perform the operation
on the body subset of of the FlexTable.

Use \code{ft_object[] <- value} to perform the operation
on the whole part (body, header or footer) of the FlexTable.

Use \code{ft_object[1, 2, to = "header"] <- value} to perform the operation
on the header subset of the FlexTable.

Use \code{ft_object[1, 2, , to = "footer"] <- value} to perform the operation
on the footer subset of the FlexTable.

To \strong{format content}, argument \code{value} (the right side of the \code{<-}) should
be one of the following:
\itemize{
		\item{\emph{for table cells: }}{an object of class \code{\link{cellProperties}}}
		\item{\emph{for paragraphs contained in table cells: }}{an object of class \code{\link{parProperties}}}
		\item{\emph{for text contained in table cells: }}{an object of class \code{\link{textProperties}}}
		\item{\emph{for borders of table cells: }}{an object of class \code{\link{borderProperties}}}
}

To \strong{add content}, there are two options:

\itemize{
		\item{\emph{option 1: }}{value should be a \code{data.frame}
			or a \code{matrix} or a \code{vector} with as many elements
			as defined by the selection.}
		\item{\emph{option 2: }}{value is a \code{\link{pot}} object,
			its value will be added in all cells defined by the selection.}
}

If dealing with \code{borderProperties} objects, use also argument
\code{side} to specify on which side of cells to apply border
properties.
}
\examples{
\donttest{
MyFTable <- FlexTable( data = mtcars[1:10, ], add.rownames=TRUE )
# modify the text formatting properties for the row.names column
MyFTable[ , 1] <- textProperties( font.style="italic", font.size = 9)
# align text to right for the row.names column
MyFTable[ , 1] <- parProperties( text.align = "right" )

# change cell formatting properties for various columns
MyFTable[ c(3,6:9), c( "mpg", "disp", "hp", "drat", "wt",
  "qsec" ) ] <- cellProperties( background.color="#CCCCCC")
# add text to elements of the column cyl
MyFTable[, "cyl", text.properties = textProperties(
  vertical.align="superscript", font.size = 9) ] <- " miles/gallon"
}
}
\seealso{
\code{\link{FlexTable}}, \code{\link{borderProperties}}
, \code{\link{cellProperties}}, \code{\link{parProperties}}
, \code{\link{textProperties}}
}
