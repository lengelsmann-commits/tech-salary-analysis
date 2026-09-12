salary_by_category <- function(data, column) {
  if (!(column %in% names(data))) {
    stop("Data does not contain this column.")
  }

  if (!("salary" %in% names(data))) {
    stop("Data does not contain salary column.")
  }

  data |>
    dplyr::group_by(.data[[column]]) |>
    dplyr::summarize(
      min_salary = if (all(is.na(salary))) NA_real_ else min(salary, na.rm = TRUE),
      avg_salary = if (all(is.na(salary))) NA_real_ else mean(salary, na.rm = TRUE),
      max_salary = if (all(is.na(salary))) NA_real_ else max(salary, na.rm = TRUE),
      .groups = "drop"
    ) |>
    dplyr::arrange(dplyr::desc(avg_salary))
}
