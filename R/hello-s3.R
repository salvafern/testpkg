#' Greets a person or a number
#'
#' @param name Character or numeric. A name of a person or a number from 1 to 3
#'
#' @return A message saying hello
#' @export
#'
#' @examples
#' hello_s3("Hisham")
#' hello_s3("Jonas")
#' hello_s3(1)
#' hello_s3(2)
hello_s3 <- function(x, ...){
  UseMethod("hello_s3")
}

#' @export
#' @rdname hello_s3
hello_s3.character <- function(x, ...){
  hello(x)
}

#' @export
#' @rdname hello_s3
hello_s3.numeric <- function(x, ...){
  ordinal <- c("one", "two", "three")
  name <- ordinal[x]
  hello(name)
}

#' Creates class virus_df
#'
#' @noRd
#' @examples
#' df <- data.frame(virus_name = c("herpes", "influenza", "covid"))
#' class(df)
#'
#' virus_df <- new_virus_df(df)
#' class(virus_df)
new_virus_df <- function(df){
  # Assertions on the class
  cols <- colnames(df)

  has_virus_name <- "virus_name" %in% cols
  stopifnot(has_virus_name)

  if(has_virus_name) virus_name_is_char <- is.character(df$virus_name)
  stopifnot(virus_name_is_char)

  # Return object with new class
  attr(df, "class") <- c("virus_df", "data.frame")

  df
}

#' @export
#' @rdname hello_s3
#' @examples
#' df <- data.frame(virus_name = c("herpes", "influenza", "covid"))
#' virus_df <- new_virus_df(df)
#' hello_s3(virus_df)
hello_s3.virus_df <- function(x, ...){
  for(name in x$virus_name){
    hello_s3.character(name)
    Sys.sleep(0.5)
  }
}


