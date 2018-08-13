#' Insert dashes.
#'
#' Call this function as an addin to insert dashes until column 80.
#'
#' @export

insert_dashes <- function(){

  # Get active document context
  context <- rstudioapi::getActiveDocumentContext()

  # Store document id
  context_id <- context$id

  # Get cursor row and column
  current_row <- context$selection[[1]]$range[[1]][[1]]
  current_col <- context$selection[[1]]$range[[1]][[2]]

  # Calculate how many dashes from current cursor position until column 80
  num_dashes <- 80 - current_col + 1

  # Store where to start inserting dashes
  insert_pos <- c(current_row, current_col + 1)

  # Insert dashes
  rstudioapi::insertText(insert_pos, strrep("-", num_dashes), id = context_id)
}
