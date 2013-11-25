\name{detectFileEncoding}
\alias{detectFileEncoding}
\title{detect file encoding for inputted file}
\usage{
  detectFileEncoding(file, n = -1,
    default = getOption("encoding"))
}
\arguments{
  \item{file}{to read from, or a \code{\link{connection}}
  which will be opened if necessary, and if so closed at
  the end of the function call.}

  \item{n}{integer. The (maximal) number of lines to read.
  Negative values indicate that one should read up to the
  end of input on the connection.}

  \item{default}{default encoding if fail to expect.}
}
\value{
  encoding name
}
\description{
  detect file encoding for inputted file
}
\examples{
big5encfile <- file.path(system.file(package="Ruchardet"),"tests","big5.txt")
detectFileEncoding(big5encfile)
}

