#' Plot Bitmoji comic
#'
#' Plot a Bitmoji comic.
#'
#' @param id Character string specifying the users unique ID. Can also be a
#' vector of length 2.
#'
#' @param tag Character string specifying the keyword tag (e.g.,
#' \code{"birthday"}).
#'
#' @export
#'
#' @examples
#' # ID obtained using get_id()
#' my_id <- "1551b314-5e8a-4477-aca2-088c05963111-v1"
#' plot_comic(my_id, tag = "edvard")
#'
#' # Plot with friends
#' plot_comic(c(my_id, my_id), tag = "sloth")
plot_comic <- function(id, tag) {
  img <- get_comic(id, tag)
  # usr <- par()
  graphics::par(mar = c(0, 0, 0, 0) + 0.1)
  graphics::plot(grDevices::as.raster(img))
}
