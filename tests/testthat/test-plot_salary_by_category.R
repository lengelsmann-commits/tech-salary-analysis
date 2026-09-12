test_that("plot_salary_by_category returns a ggplot object", {
  jobs <- data.frame(
    department = c("Data", "Data", "Engineering"),
    salary = c(50000, 70000, 90000)
  )

  out_file <- tempfile(fileext = ".png")
  result <- plot_salary_by_category(jobs, "department", out_file)

  expect_s3_class(result, "ggplot")
  expect_true(file.exists(out_file))
})
