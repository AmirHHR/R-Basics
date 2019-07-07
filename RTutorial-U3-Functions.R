# RTutorial-U3-Functions,Recursive

# Functions are used to logically break our code into simpler parts which become easy to 
# maintain and understand.

# Syntax for Writing Functions
# func_name <- function (argument) {
# statement
# }
# Here, we can see that the reserved word function is used to declare a function in R.
# The statements within the curly braces form the body of the function. These braces are optional 
# if the body contains only a single expression.
# Finally, this function object is given a name by assigning it to a variable, func_name.

pow <- function(x, y) {
result <- x^y
print(paste(x,"raised to the power", y, "is", result))
}
# Here, we created a function called pow().
# We have used a built-in function paste() which is used to concatenate strings.

# We can call the above function as follows.
pow(8, 2)
# [1] "8 raised to the power 2 is 64"
pow(2, 8)
# [1] "2 raised to the power 8 is 256"
# Here, the arguments used in the function declaration (x and y) are called formal arguments 
# and those used while calling the function are called actual arguments.

pow(8, 2)
# [1] "8 raised to the power 2 is 64"
pow(x = 8, y = 2)
# [1] "8 raised to the power 2 is 64"
pow(y = 2, x = 8)
# [1] "8 raised to the power 2 is 64"

# Furthermore, we can use named and unnamed arguments in a single call.
# In such case, all the named arguments are matched first and then the remaining unnamed 
# arguments are matched in a positional order.
pow(x=8, 2)
# [1] "8 raised to the power 2 is 64"
pow(2, x=8)
# [1] "8 raised to the power 2 is 64"

# We can assign default values to arguments in a function in R.
# This is done by providing an appropriate value to the formal argument in the function 
# declaration. Here is the above function with a default value for y.
pow <- function(x, y = 2) {
result <- x^y
print(paste(x,"raised to the power", y, "is", result))
}

pow(3)
# [1] "3 raised to the power 2 is 9"
pow(3,1)
# [1] "3 raised to the power 1 is 3"

# Here, y is optional and will take the value 2 when not provided.

# Many a times, we will require our functions to do some processing and return back the result. 
# This is accomplished with the return() function in R.

check <- function(x) {
if (x > 0) {
result <- "Positive"
}
else if (x < 0) {
result <- "Negative"
}
else {
result <- "Zero"
}
return(result)
}

check(1)
# [1] "Positive"
check(-10)
# [1] "Negative"
check(0)
# [1] "Zero"

# If there are no explicit returns from a function, the value of the last evaluated expression 
# is returned automatically in R.

# We generally use explicit return() functions to return a value immediately from a function.
# If it is not the last statement of the function, it will prematurely end the function bringing 
# the control to the place from which it was called.

check <- function(x) {
if (x>0) {
return("Positive")
}
else if (x<0) {
return("Negative")
}
else {
return("Zero")
}
}
# In the above example, if x > 0, the function immediately returns "Positive" without evaluating 
# rest of the body.

# The return() function can return only a single object. If we want to return multiple values 
# in R, we can use a list (or other objects) and return it.

multi_return <- function() {
my_list <- list("color" = "red", "size" = 20, "shape" = "round")
return(my_list) 
}
# Here, we create a list my_list with multiple elements and return this single list.

a <- multi_return()
a$color
# [1] "red"
a$size
# [1] 20
a$shape
# [1] "round"

# A function that calls itself is called a recursive function and this technique is known as 
# recursion. This special programming technique can be used to solve problems by breaking them 
# into smaller and simpler sub-problems.

recursive.factorial <- function(x) {
if (x == 0)    return (1)
else           return (x * recursive.factorial(x-1))
}

# Here, we have a function which will call itself. Something like recursive.factorial(x) will 
# turn into x * recursive.factorial(x) until x becomes equal to 0. When x becomes 0, we return 1 
# since the factorial of 0 is 1. This is the terminating condition and is very important.
# Without this the recursion will not end and continue indefinitely (in theory).

recursive.factorial(0)
# [1] 1
recursive.factorial(5)
# [1] 120
recursive.factorial(7)
# [1] 5040


