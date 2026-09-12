test_that("count_tech_jobs_by counts tech jobs by selected column", {
  jobs <- data.frame(
    job_title = c("Data Scientist", "Backend Developer", "Teacher", "Developer"),
    company = c("A", "A", "B", "C")
  )

  result <- count_tech_jobs_by(jobs, "company")

  expect_equal(sum(result$n), 3)
  expect_equal(result$company[[1]], "A")
  expect_equal(result$n[[1]], 2)
})

test_that("count_tech_jobs_by errors for missing column", {
  jobs <- data.frame(job_title = c("Data Scientist", "Teacher"))

  expect_error(count_tech_jobs_by(jobs, "company"), "does not contain this column")
})
