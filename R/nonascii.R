#' @export
f <- function(x){
  paste0("0x", utf8ToInt("%x", x))
}
