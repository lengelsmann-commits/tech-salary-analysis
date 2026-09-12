\name{salary_by_category}
\alias{salary_by_category}
\title{Summarize Salary by Category}
\description{
Groups a data frame by a chosen column and computes the minimum, average, and
maximum salary for each category.
}
\usage{
salary_by_category(data, column)
}
\arguments{
  \item{data}{A data frame containing salary data.}
  \item{column}{A character string giving the name of the grouping column.}
}
\value{
A data frame containing the grouping column, minimum salary, average salary, and
maximum salary, sorted by descending average salary.
}
\examples{
jobs <- data.frame(
  role = c("Analyst", "Analyst", "Engineer"),
  salary = c(50000, 60000, 80000)
)

salary_by_category(jobs, "role")
}
