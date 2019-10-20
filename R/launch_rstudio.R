#' Launch a new project-less RStudio session
#'
#' Call this function as an addin to launch a new project-less RStudio session
#' without closing your currently open RStudio project(s).
#'
#' @export

launch_rstudio <- function() {

  if (Sys.info()["sysname"] != "Windows") {
    rstudioapi::terminalExecute("open -n /Applications/RStudio.app", show = FALSE)
  } else {
    path <- rstudioapi::dictionariesPath()
    path <- gsub("resources/dictionaries", "bin/rstudio.exe", path)
    path <- paste0('"', path, '" -n')
    rstudioapi::terminalExecute(path, show = FALSE)
  }
}
