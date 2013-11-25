#' detect file encoding for inputted file 
#' @param file to read from, or a \code{\link{connection}} which will be opened if necessary, and if so closed at the end of the function call.
#' @param n integer. The (maximal) number of lines to read. Negative values indicate that one should read up to the end of input on the connection.
#' @param default default encoding if fail to expect.
#' @return encoding name
#' @examples 
#' big5encfile <- file.path(system.file(package="Ruchardet"),"tests","big5.txt") 
#' detectFileEncoding(big5encfile) 
#' @export 
detectFileEncoding <- function(file, n=-1, default=getOption("encoding")){
  if (is.character(file) & file.exists(file)) {
    con <- file(file, "r")
    on.exit(close(con))
  }else if(inherits(file, "connection")){
    con <- file
  }else{
    stop("Argument 'file' must be a character string of file path or connection.")
  }
  encs <- detectEncoding(paste0(readLines(con, warn=FALSE, n=n),collapse=""))
  if(encs == ''){
    warning("can't expect encoding, will return 'default' encoding")
    encs <- default
  }
  return(encs)
}




