test_that("filter_tech_jobs keeps only tech roles", {
  jobs <- data.frame(
    job_title = c("Data Scientist", "Teacher", "Backend Developer"),
    salary = c(70000, 40000, 80000)
  )

  result <- filter_tech_jobs(jobs)

  expect_equal(nrow(result), 2)
  expect_true(all(result$job_title %in% c("Data Scientist", "Backend Developer")))
})

test_that("filter_tech_jobs errors when job_title is missing", {
  jobs <- data.frame(title = c("Data Scientist", "Teacher"))

  expect_error(filter_tech_jobs(jobs), "job_title")
})
