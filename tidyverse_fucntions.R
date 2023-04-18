library(tidyverse)
mtcars

dplyr::select(mtcars, mpg,hp)


# you can use left to the comma is how you filter rows
# right to the comma how you select columns
#non-tidy verse way of selecting columns.
mtcars[, c("mpg", "hp")]

my_select3<- function(dat, col1, col2){
  return (
    dat[, c(col1, col2)]
  )
}

my_select3(mtcars, "mpg", "hp")


#... means i will be able to deal with all of the comma separated values.
sum(1,3,4,5)
my_select4<-function (dat, ...){
  return (
    select(dat, ...)
  )
}

my_select4(mtcars, mpg, hp)


#{{}} tidyverse notation for you did not mean col1 you meant whatever passed as
#col1  in this case it is mgp
my_select4<- function (dat, col1, col2){
  return (
    select (dat, {{col1}},  {{col2}})
  )
}

my_select4(mtcars, mpg,hp)





