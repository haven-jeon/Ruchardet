#' detect file encoding 
#' detect file encoding for inputted file 
#' @param file to read from, or a \code{\link{connection}} which will be opened if necessary, and if so closed at the end of the function call.
#' @param n how many lines of file will be checked.
#' @return text encoding name
#' @examples 
#' big5encfile <- file.path(system.file(package="Ruchardet"),"tests","big5.txt") 
#' detectFileEncoding(big5encfile) 
#' @export 
detectFileEncoding <- function(file, n=100){
  if (is.character(file) & file.exists(file)) {
    con <- file(file, "r")
    on.exit(close(con))
  }else if(inherits(file, "connection")){
    con <- file
  }else{
    stop("Argument 'file' must be a character string of file path or connection.")
  }
  detectEncoding(paste0(readLines(con, warn=FALSE, n=n),collapse=""))
}




