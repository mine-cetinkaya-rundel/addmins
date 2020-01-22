#' Use teacher mode.
#'
#' Use default theme in RStudio for teaching.
#'
#' Note: When rstudioapi package allows, will also add functionality to change
#' font and pane arrangement.
#'
#' @export

use_teach_mode <- function(){

  # Set default theme
  rstudioapi::applyTheme("Textmate (default)")

}
