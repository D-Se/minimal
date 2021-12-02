`%||%` <- function(x, y){
  if(is.null(x)) y else x
}

#' get position of letter in alphabet
#' 
#' @param x string
#' @export
f <- function(x){
  v <- vector("integer", length(x))
  for (i in seq_along(x)) {
    num = h[[x[i]]] %||% g(x[i])
    v[i] <- sum(v[1:(i-1)], num)
  }
  v
}

#' remove cached values
#' 
#' @export
reset <- function(){
  memoise::forget(minimal:::g)
}

#' internal inner function
#' 
#' @param x 
g <- function(x){
  match(x, letters)
}


# h <- list2env(list("a" = 1, "b" = 2, "c" = 3), hash = T)
# usethis::use_data(h, overwrite = T)

# f(c("a", "b", "c", "t", "z"))


