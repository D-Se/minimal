.onLoad <- function(libname, pkgname){
  g <<- memoise::memoise(g)
}