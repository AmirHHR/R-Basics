# RPro-U9-L-Functions

# The Sys.Date() function returns a string representing today's date.
Sys.Date()
# [1] "2019-06-26"

# The mean() function takes a vector of numbers as input, and returns the average of
# all of the numbers in the input vector.
mean(c(2,4,5))
# [1] 3.666667

boring_function <- function(x) {
  x
}

boring_function('My first function!')
# [1] "My first function!"

# If you want to see the source code for any function, just type the function name
# without any arguments or parentheses.
boring_function
# function(x) {
#   x
# }
# <bytecode: 0x0000000016733138>

# last line in a function returns as a output 
my_mean <- function(my_vector) {
  sum(my_vector)/length(my_vector)
}

my_mean(c(4,5,10))
# [1] 6.333333

# write a function called "remainder." remainder() will take two arguments: "num" and "divisor" 
# where "num" is divided by "divisor" which is 2 and the remainder is returned.
remainder <- function(num, divisor=2) {
 num %% divisor
}
remainder(5)
# [1] 1

# You provided one argument to the function, and R matched that argument to 'num' since 'num' 
# is the first argument. The default value for 'divisor' is 2, so the function used the default 
# value you provided.

remainder(11, 5)
# [1] 1

# You can also explicitly specify arguments in a function. When you explicitly
# designate argument values by name, the ordering of the arguments becomes unimportant.
remainder(divisor = 11, num = 5)
# [1] 5

# see a function's arguments
args(remainder)
# function (num, divisor = 2) 
# NULL

# Write a function which:
# 1. evaluate(sum, c(2, 4, 6)) should evaluate to 12
# 2. evaluate(median, c(7, 40, 9)) should evaluate to 9
# 3. evaluate(floor, 11.1) should evaluate to 11
evaluate <- function(func, dat){ 
  func(dat)
}

# Use evaluate to find the standard deviation of the vector c(1.4, 3.6, 7.9, 8.8)
valuate(sd, c(1.4, 3.6, 7.9, 8.8))
# [1] 3.514138

# Let's use the evaluate function to explore how anonymous functions work
evaluate(function(x){x+1}, 6)
# [1] 7
# The first argument is a tiny anonymous function that takes one argument `x` and returns `x+1`. 
# We passed the number 6 into this function so the entire expression evaluates to 7.

# Try using evaluate() along with an anonymous function to return the first element of the 
# vector c(8, 4, 0). Your anonymous function should only take one argument 
evaluate(function(x){x[1]}, c(8, 4, 0))
# [1] 8

# using evaluate() along with an anonymous function to return the last element of c(8, 4, 0).
evaluate(function(x){x[length(x)]}, c(8, 4, 0))
# [1] 0

?paste
# As you can see the first argument of paste() is `...` which is referred to as an ellipsis 
# or simply dot-dot-dot. The ellipsis allows an indefinite number of arguments to be passed into 
# a function. In the case of paste() any number of strings can be passed as arguments and 
# paste() will return all of the strings combined into one string.
paste("Programming", "is", "fun!")
# [1] "Programming is fun!"

# The ellipses can be used to pass on arguments to other functions that are
# used within the function you're writing. Usually a function that has the
# ellipses as an argument has the ellipses as the last argument. The usage of
# such a function would look like:
#
# ellipses_func(arg1, arg2 = TRUE, ...)
#
# In the above example arg1 has no default value, so a value must be provided
# for arg1. arg2 has a default value, and other arguments can come after arg2
# depending on how they're defined in the ellipses_func() documentation.

# paste (..., sep = " ", collapse = NULL)

# Notice that the ellipses is the first argument, and all other arguments after
# the ellipses have default values. This is a strict rule in R programming: all
# arguments after an ellipses must have default values.

# Write a function below called telegram that formats sentences like:
# For example the expression `telegram("Good", "morning")` should evaluate to:
# "START Good morning STOP"

telegram <- function(...){
    paste("START", ..., "STOP")
}

telegram("sentence")
# [1] "START sentence STOP"

# how to "unpack" arguments from an ellipses when you use the ellipses as an argument:
mad_libs <- function(...){
  aaa <- list(...)
  place <- aaa[[1]]
  adjective <- aaa[[2]]
  noun <- aaa[[3]]
  paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}

mad_libs("Iran", "good", "book")
# [1] "News from Iran today where good students took to the streets in protest of the new book being installed on campus."

# The syntax for creating new binary operators in R is unlike anything else in
# R, but it allows you to define a new syntax for your function. I would only
# recommend making your own binary operator if you plan on using it often!
#
# User-defined binary operators have the following syntax:
#      %[whatever]% 
# where [whatever] represents any valid variable name.
# 
# Let's say I wanted to define a binary operator that multiplied two numbers and
# then added one to the product. An implementation of that operator is below:
#
# "%mult_add_one%" <- function(left, right){ # Notice the quotation marks!
#   left * right + 1
# }
#
# I could then use this binary operator like `4 %mult_add_one% 5` which would
# evaluate to 21.

# Write your own binary operator below from absolute scratch! Your binary
# operator must be called %p% so that the expression:
#
#       "Good" %p% "job!"
#
# will evaluate to: "Good job!"

"%p%" <- function(str1 = "Good",str2 = "job!"){
  paste(str1,str2)
}

# Paste together the strings: 'I', 'love', 'R!' using your new binary operator.
'I' %p% 'love'%p% 'R!'
# [1] "I love R!"