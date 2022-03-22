

# Presciption datas
raw_prescription <- tibble::tibble(
  LopNr = c(42, 42),
  EDATUM = c("2000-01-02", "2001-01-02"),
  fddd = c(84, 84)
)

calc_prospective_usage <- function(raw_prescription) {
  # Do magic here
}


prospective_usage <- calc_prospective_usage(raw_prescription)
testthat::expect_true("LopNr" %in% names(prospective_usage))
testthat::expect_true("start_date" %in% names(prospective_usage))
testthat::expect_true("end_date" %in% names(prospective_usage))

# Not Tidyverse, but intuitive
expected_usage <- tibble::tibble(
  LopNr = c(42, 42),
  start_date = c("2000-01-02",  "2001-01-02"),
  end_data = c("2000-04-02", "2001-04-02")
)

testthat::expect_identical(prospective_usage, expected_prospective_usage)
