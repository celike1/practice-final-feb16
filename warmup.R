#'determine wheter female biinge drank
#'
#'This is an example from roxygen2 comment for documenting function
#'This function takes in number of drinks and assumes the sex is female
#'determines drinking status.
#'
#'@param num_drinks number of drinks, this is usually an integer
#'
#'@returns a string of either binge or no binge
#'
#'@examples
#'#binge_sex_female(4)
#'#binge_sex_female(5)
#'
binge_sex_female <- function(num_drinks) {
  if (num_drinks >= 4) {
    return("binge")
  } else {
    return("no binge")
  }
}
testthat::expect_equal(binge_sex_female(4), "binge")
testthat::expect_equal(binge_sex_female(5), "binge")
testthat::expect_equal(binge_sex_female(1), "no binge")

binge_sex_male <- function(num_drinks) {
  if (num_drinks >= 5) {
    return("binge")
  } else {
    return("no binge")
  }
}
testthat::expect_equal(binge_sex_male(5), "binge")
testthat::expect_equal(binge_sex_male(10), "binge")
testthat::expect_equal(binge_sex_male(4), "no binge")

binge_status <- function(sex, num_drinks) {
  if (sex == "male") {
    return(binge_sex_male(num_drinks))
  } else {
    return(binge_sex_female(num_drinks))
  }
}
binge_status("male", 5)
binge_status("male", 4)
binge_status("female", 4)
