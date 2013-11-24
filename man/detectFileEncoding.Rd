\name{detectFileEncoding}
\alias{detectFileEncoding}
\title{detect file encoding
detect file encoding for inputted file}
\usage{
  detectFileEncoding(file, n = 100)
}
\arguments{
  \item{file}{to read from, or a \code{\link{connection}}
  which will be opened if necessary, and if so closed at
  the end of the function call.}

  \item{n}{how many lines of file will be checked.}
}
\value{
  text encoding name
}
\description{
  detect file encoding detect file encoding for inputted
  file
}
\examples{
big5encfile <- file.path(system.file(package="Ruchardet"),"tests","big5.txt")
detectFileEncoding(big5encfile)
}

