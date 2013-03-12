

#' getCharEncoding
#' 
#' getCharEncoding
#' 
#' @param chars input charactoer 
#' @return output encodings
#' @useDynLib Ruchardet
#' @export
getCharEncoding <- function(chars) {
    .Call('getCharEncoding', chars,PACKAGE = 'Ruchardet')
}

