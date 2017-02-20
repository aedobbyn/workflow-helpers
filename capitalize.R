# Take a vector of strings that have words separated by underscores and capitalize those words

library(Hmisc) # for capitalize()

# this function called within capitalize_this()
# thanks stackoverflow
simpleCap <- function(x) {
  s <- strsplit(x, " ")[[1]]
  paste(toupper(substring(s, 1,1)), substring(s, 2),
        sep="", collapse=" ")
}


capitalize_this <- function(vec, ...) {
  out <- vector()
  for (i in vec) {
    if (grepl(pattern = "_", x = i) == TRUE) {
      i <- simpleCap(gsub(x = i, pattern = "_", replacement = " "))
    } else {
      i <- capitalize(i)
    }
    out <- c(out, i)
  }
  out
}




dat <- data.frame(first_var = c(1:3), 
                  second_var = c("want_to", "capitalize", "all_this_stuff"))

capitalize_this(dat$second_var)
capitalize_this(names(dat))



