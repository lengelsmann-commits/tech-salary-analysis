\name{count_tech_jobs_by}
\alias{count_tech_jobs_by}
\title{Count Technology Jobs by Category}
\description{
Filters a data frame to technology-related jobs and counts the number of rows in
each level of a selected column.
}
\usage{
count_tech_jobs_by(data, column)
}
\arguments{
  \item{data}{A data frame containing job listing data.}
  \item{column}{A character string giving the name of the column to count by.}
}
\value{
A data frame with the selected category column and a count column named \code{n},
sorted in descending order.
}
\examples{
jobs <- data.frame(
  job_title = c("Data Scientist", "Backend Developer", "Teacher"),
  company = c("A", "A", "B")
)

count_tech_jobs_by(jobs, "company")
}
