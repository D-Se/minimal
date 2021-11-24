#' blabla
#' 
#' @param x string
#' @export
f <- function(x){
  paste0("0x", sprintf("%x", utf8ToInt(x)))
}