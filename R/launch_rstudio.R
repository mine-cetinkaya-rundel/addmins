#' Launch a new project-less RStudio session
#'
#' Call this function as an addin to launch a new project-less RStudio session
#' without closing your currently open RStudio project(s).
#'
#' @export

launch_rstudio <- function(){

  rstudioapi::terminalExecute("open -n /Applications/RStudio.app", show = FALSE)

}
