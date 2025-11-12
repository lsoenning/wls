#' ggplot2 theme for spike graph with nested facets
#'
#' ggplot2 theme for drawing nested facets with the {ggh4x} package, in part based on the code provided by Teun van den Brand on stackoverflow.com (https://stackoverflow.com/questions/40316169/nested-facets-in-ggplot2-spanning-groups).
#'
#' @export
theme_spike_graph <- function(){

  ggplot2::theme(
    panel.spacing = ggplot2::unit(0, "lines"),
    strip.background = ggplot2::element_rect(color = "grey", fill = "white", linewidth = 1),
    panel.border = ggplot2::element_rect(color = "grey", linewidth = 1),
    axis.ticks.x = ggplot2::element_blank(),
    axis.text.x = ggplot2::element_blank(),
    panel.grid = ggplot2::element_blank(),
    legend.position = "none",
    strip.clip = "off"
  )
}
