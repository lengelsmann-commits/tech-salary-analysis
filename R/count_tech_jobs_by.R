count_tech_jobs_by <- function(data, column) {
  if (!(column %in% names(data))) {
    stop("Data does not contain this column.")
  }

  tech_data <- filter_tech_jobs(data)

  dplyr::count(tech_data, .data[[column]], sort = TRUE)
}
