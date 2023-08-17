#' Greets a person
#'
#' @param name Character. A name of a person.
#'
#' @return A message saying hello
#' @export
#'
#' @examples \dontrun{
#' hello("Hisham M")
#' hello("Jonas")
#' }
hello <- function(name) {
  checkmate::assert_character(name)

  message(glue::glue('Hello {name}!'))
}
