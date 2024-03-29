% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rename_dict.R
\name{rename_dict}
\alias{rename_dict}
\title{Dictionary Style Renaming}
\usage{
rename_dict(df, old_names, new_names, match_all = TRUE)
}
\arguments{
\item{df}{A data frame}

\item{old_names}{Character vector of names in \code{df}}

\item{new_names}{Character vector of new names of the same length as \code{old_names}}

\item{match_all}{Do all of \code{old_names} need to be in the columns of \code{df}?}
}
\value{
\code{df} with new names
}
\description{
Dictionary Style Renaming
}
\note{
I like option in pandas to rename using a dictionary so here is an R version.
}
\examples{
df = tibble::tibble(
  Hammurabi = 1:3,
  Cyrus = letters[1:3],
  David = LETTERS[1:3]
)

rename_from = c(
  'Cyrus',
  'Hammurabi',
  'Alexander'
)

rename_to = c(
  'Cambyses',
  'Nebuchadnezzar',
  'Ptolemy'
)

rename_dict(
  df,
  old_names = rename_from,
  new_names = rename_to,
  match_all = FALSE
)
}
