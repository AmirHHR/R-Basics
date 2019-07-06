# RTutorial-U2-ifelse

# In the case of numeric vector, zero is taken as FALSE, rest as TRUE.

# if (test_expression) {
# statement1
# } else {
# statement2
# }

# The else part is optional and is only evaluated if test_expression is FALSE.
# else must be in the same line as the closing braces of the if statement.

x <- -5
if(x > 0){
print("Non-negative number")
} else {
print("Negative number")
}
# [1] "Negative number"

# if(x > 0) print("Non-negative number") else print("Negative number")
x <- -5
y <- if(x > 0) 5 else 6
y
# [1] 6

# if…else Ladder
# The if…else ladder (if…else…if) statement allows you execute a block of code among more than 
# 2 alternatives

# if ( test_expression1) {
# statement1
# } else if ( test_expression2) {
# statement2
# } else if ( test_expression3) {
# statement3
# } else {
# statement4
# }
# Only one statement will get executed depending upon the test_expressions.

x <- 0
if (x < 0) {
print("Negative number")
} else if (x > 0) {
print("Positive number")
} else
print("Zero")
# [1] "Zero" 

# Most of the functions in R take vector as input and output a resultant vector.
# This vectorization of code, will be much faster than applying the same function to each 
# element of the vector individually.

# ifelse(test_expression, x, y)
# Here, test_expression must be a logical vector (or an object that can be coerced to logical). 
# The return value is a vector with the same length as test_expression.

# This is to say, the i-th element of result will be x[i] if test_expression[i] is TRUE else it 
# will take the value of y[i].
# The vectors x and y are recycled whenever necessary.

a = c(5,7,2,9)
ifelse(a %% 2 == 0,"even","odd")
# [1] "odd"  "odd"  "even" "odd" 

# the other two vectors in the function argument gets recycled to ("even","even","even","even") 
# and ("odd","odd","odd","odd") respectively.

