\name{filter_tech_jobs}
\alias{filter_tech_jobs}
\title{Filter Technology-Related Job Listings}
\description{
Filters a data frame to keep only rows whose \code{job_title} matches a set of
technology-related job keywords.
}
\usage{
filter_tech_jobs(data)
}
\arguments{
  \item{data}{A data frame containing at least a \code{job_title} column.}
}
\value{
A filtered data frame containing only rows identified as tech jobs.
}
\examples{
jobs <- data.frame(
  job_title = c("Data Scientist", "Nurse", "Backend Developer"),
  salary = c(70000, 50000, 80000)
)

filter_tech_jobs(jobs)
}
