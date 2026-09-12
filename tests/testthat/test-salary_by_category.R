test_that("salary_by_category returns grouped salary summary", {
  jobs <- data.frame(
    department = c("Data", "Data", "Engineering"),
    salary = c(50000, 70000, 90000)
  )

  result <- salary_by_category(jobs, "department")

  expect_true(all(c("min_salary", "avg_salary", "max_salary") %in% names(result)))
  expect_equal(result$avg_salary[[result$department == "Data"]], 60000)
})

test_that("salary_by_category errors when salary is missing", {
  jobs <- data.frame(department = c("Data", "Engineering"))

  expect_error(salary_by_category(jobs, "department"), "salary column")
})
