#' Hello Workshop Attendees
#'
#' Welcomes the CI/CD workshop attendees
#' @author Yourself
#' @details Greet workshop attendees
#' @return Happy Message
#' @export
#' @examples
#' hello()
hello <- function() {
  message("Welcome to the R/Pharma CI/CD workshop!")
}

#' Linting for Cyclomatic Complexity
#'
#' Cyclomatic Complexity Example
#' @author Yourself
#' @details Demonstrates cyclomatic complexity
#' @return Surprised Message!
#' @export
#' @examples
#' linter_ex("lint")
linter_ex <- function(x) {
  if (x == "lint") {
    if (x == "lint") {
      if (x == "lint") {
        message("Whoa!")
      }
    }
  }
}
