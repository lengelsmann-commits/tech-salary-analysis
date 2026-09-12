\name{plot_salary_by_category}
\alias{plot_salary_by_category}
\title{Plot Average Salary by Category}
\description{
Creates a bar chart of average salary by category, saves it to a PNG file, and
returns the ggplot object.
}
\usage{
plot_salary_by_category(data, column, file_name = "visualization.png")
}
\arguments{
  \item{data}{A data frame containing salary data.}
  \item{column}{A character string giving the name of the grouping column.}
  \item{file_name}{A character string giving the output PNG file name.}
}
\value{
A \code{ggplot} object. The plot is also saved to disk as a PNG image.
}
\examples{
\dontrun{
jobs <- data.frame(
  department = c("Data", "Data", "Engineering"),
  salary = c(60000, 70000, 90000)
)

plot_salary_by_category(jobs, "department")
}
}
