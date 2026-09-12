plot_salary_by_category <- function(data, column, file_name = "visualization.png") {
  if (!(column %in% names(data))) {
    stop("Data does not contain this column.")
  }

  if (!("salary" %in% names(data))) {
    stop("Data does not contain salary column.")
  }

  plot_data <- data |>
    dplyr::group_by(.data[[column]]) |>
    dplyr::summarize(avg_salary = mean(salary, na.rm = TRUE), .groups = "drop") |>
    dplyr::arrange(dplyr::desc(avg_salary))

  p <- ggplot2::ggplot(plot_data, ggplot2::aes(x = reorder(.data[[column]], avg_salary), y = avg_salary)) +
    ggplot2::geom_col() +
    ggplot2::coord_flip() +
    ggplot2::labs(
      title = paste("Average salary by", column),
      x = column,
      y = "Average salary"
    ) +
    ggplot2::theme_classic()

  ggplot2::ggsave(
    filename = file_name,
    plot = p,
    width = 1200,
    height = 900,
    units = "px"
  )

  p
}
