# RTutorial-U3-Infix Operator, Switch

# Most of the operators that we use in R are binary operators (having two operands). Hence, they 
# are infix operators, used between the operands. Actually, these operators do a function call in 
# the background. For example, the expression a+b is actually calling the function `+`() with the 
# arguments a and b, as `+`(a, b).
# Note: the back tick (`), this is important as the function name contains special symbols.

5+3
# [1] 8
`-`(`*`(5,3),1)
# [1] 14

# It is possible to create user-defined infix operators in R. This is done by naming a function 
# that starts and ends with %.

`%divisible%` <- function(x,y)
{
if (x%%y ==0) return (TRUE)
else          return (FALSE)
}
# This function can be used as infix operator a %divisible% b or as a function call 
# `%divisible%`(a, b). Both are the same.

10 %divisible% 3
# [1] FALSE
> 10 %divisible% 2
# [1] TRUE
`%divisible%`(10,5)
# [1] TRUE

# Things to remember while defining your own infix operators are that they must start and end 
# with %. Surround it with back tick (`) in the function definition and escape any special symbols.

# Predefined infix operators in R
# %%   Remainder operator
# %/%  Integer division
# %*%  Matrix multiplication
# %o%  Outer product
# %x%  Kronecker product
# %in% Matching operator

a = c(1,2,3,4)
b = c(2,3,4,5)
a*b
# [1]  2  6 12 20
a%*%b
#      [,1]
# [1,]   40



# Switch

# switch (expression, list)
# Here, the expression is evaluated and based on this value, the corresponding item in the list 
# is returned. If the value evaluated from the expression matches with more than one item of the 
# list, switch() function returns the first matched item.

# If the value evaluated is a number, that item of the list is returned.

switch(2,"red","green","blue")
# [1] "green"
switch(1,"red","green","blue")
# [1] "red"

# The switch() function returns the corresponding item to the numeric value evaluated.
# If the numeric value is out of range (greater than the number of items in the list or smaller 
# than 1), then, NULL is returned.

x <- switch(4,"red","green","blue")
x
# NULL
x <- switch(0,"red","green","blue")
x
# NULL

# The expression used in the switch () function can be a string as well. In this case, the 
# matching named item’s value is returned.

switch("color", "color" = "red", "shape" = "square", "length" = 5)
# [1] "red"
# Here, "color" is a string  which matches with the first item of the list. Hence, we are 
# getting “red” as an output.

switch("length", "color" = "red", "shape" = "square", "length" = 5)
# [1] 5
# Similarly, "length" expression matches with the last item of the list. Hence, we are getting 
# 5 as an output.