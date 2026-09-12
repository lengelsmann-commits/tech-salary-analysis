filter_tech_jobs <- function(data) {
  required_cols <- "job_title"

  if (!all(required_cols %in% names(data))) {
    stop("Data must contain a job_title column.")
  }

  tech_keywords <- paste(
    c(
      "data analyst",
      "data scientist",
      "ai engineer",
      "machine learning engineer",
      "software engineer",
      "developer",
      "business analyst",
      "cloud engineer",
      "devops engineer",
      "data engineer",
      "frontend developer",
      "backend developer",
      "cybersecurity analyst"
    ),
    collapse = "|"
  )

  dplyr::filter(
    data,
    stringr::str_detect(stringr::str_to_lower(job_title), tech_keywords)
  )
}
