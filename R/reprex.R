set.seed(1)
key <- do.call(paste0, Map(stringi::stri_rand_strings, n=2e5, length = 16))
val <- sample.int(750, size = 2e5, replace = T)

#' @param keys char
#' @param values int
#' @export
make_dict <- function(keys, values){
  require(rlang)
  e <- new.env(size = length(keys))
  l <- list2(!!!setNames(values, keys))
  list2env(l, envir = e, hash = T)
}

d <- make_dict(key, val)


`%||%` <- function(x,y) if(is.null(x)) y else x

#' @export
grab <- function(...){
  vector("integer", length(..2)) |>
    (\(.){. = Vectorize(\(e, x) e[[x]] %||% NA_integer_, list("x"), T, F)(..1, ..2); .})()
}
