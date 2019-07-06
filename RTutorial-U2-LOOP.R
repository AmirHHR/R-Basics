# RTutorial-U2-LOOP

# for (val in sequence)
# {
# statement
# }

# Here, sequence is a vector and val takes on each of its value during the loop. In each 
# iteration, statement is evaluated.

x <- c(2,5,3,9,8,11,6)
count <- 0
for (val in x) {
if(val %% 2 == 0)  count = count+1
}
print(count)
# [1] 3

# while loop

# while (test_expression)
# {
# statement
# }

# Here, test_expression is evaluated and the body of the loop is entered if the result is TRUE.

# The statements inside the loop are executed and the flow returns to evaluate the 
# test_expression again.
# This is repeated each time until test_expression evaluates to FALSE, in which case, the loop 
# exits.

i <- 1
while (i < 6) {
print(i)
i = i+1
}
# [1] 1
# [1] 2
# [1] 3
# [1] 4
# [1] 5

# a normal looping sequence can be altered using the break or the next statement.

# break statement
# A break statement is used inside a loop (repeat, for, while) to stop the iterations and flow 
# the control outside of the loop. In a nested looping situation, where there is a loop inside 
# another loop, this statement exits from the innermost loop that is being evaluated.

# Note: the break statement can also be used inside the  else branch of if...else statement.

x <- 1:5
for (val in x) {
if (val == 3){
break
}
print(val)
}
# [1] 1
# [1] 2

# next statement
# A next statement is useful when we want to skip the current iteration of a loop without 
# terminating it. On encountering next, the R parser skips further evaluation and starts 
# next iteration of the loop.

# Note: the next statement can also be used inside the  else branch of if...else statement.

x <- 1:5
for (val in x) {
if (val == 3){
next
}
print(val)
}
# [1] 1
# [1] 2
# [1] 4
# [1] 5

# R repeat loop

# A repeat loop is used to iterate over a block of code multiple number of times.
# There is no condition check in repeat loop to exit the loop.
# We must ourselves put a condition explicitly inside the body of the loop and use the break 
# statement to exit the loop. Failing to do so will result into an infinite loop.

x <- 1
repeat {
print(x)
x = x+1
if (x == 6){
break
}
}
# [1] 1
# [1] 2
# [1] 3
# [1] 4
# [1] 5


