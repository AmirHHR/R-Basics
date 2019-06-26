# RPro-U8-L-Logic 

# The next operator we will discuss is the 'not equals' operator represented by `!=`.
# Not equals tests whether two values are unequal, so TRUE != FALSE evaluates to TRUE.
5!=7
# [1] TRUE

In order to negate boolean expressions you can use the ! operator.
!(5==7)
# [1] TRUE

# There are two AND operators in R, `&` and `&&`. Both operators work similarly, if the right 
# and left operands of AND are both TRUE the entire expression is TRUE, otherwise it is FALSE. 
# For example, TRUE & TRUE evaluates to TRUE.
FALSE & FALSE
# [1] FALSE

# You can use the `&` operator to evaluate AND across a vector.
TRUE & c(TRUE, FALSE, FALSE)
# [1]  TRUE FALSE FALSE

# What happens in this case is that the left operand `TRUE` is recycled across every
# element in the vector of the right operand. This is the equivalent statement as
# c(TRUE, TRUE, TRUE) & c(TRUE, FALSE, FALSE).

# In this case, the left operand is only evaluated with the first member of the right
# operand (the vector). The rest of the elements in the vector aren't evaluated at all
# in this expression.
TRUE && c(TRUE, FALSE, FALSE)
# [1] TRUE

# The `|` version of OR evaluates OR across an entire vector, while the `||` version of OR only 
# evaluates the first member of a vector.
TRUE | c(TRUE, FALSE, FALSE)
# [1] TRUE TRUE TRUE
TRUE || c(TRUE, FALSE, FALSE)
# [1] TRUE

# All AND operators are evaluated before OR operators.

# The function isTRUE() takes one argument. If that argument evaluates to TRUE, the
# function will return TRUE. Otherwise, the function will return FALSE.
isTRUE(6 > 4)
# [1] TRUE

# xor() function,exclusive OR, which takes two arguments. If one argument evaluates to TRUE and 
# one argument evaluates to FALSE, then this function will return TRUE, otherwise it will return
# FALSE.
xor(5 == 6, !FALSE)
# [1] TRUE

# create a vector of integers called ints
ints <- sample(10)
ints
# [1]  1  5  2  4  7 10  8  3  6  9
# is a random sampling of integers from 1 to 10 without replacement.

ints > 5
# [1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE

# The which() function takes a logical vector as an argument and returns the indices of the 
# vector that are TRUE.
which(c(TRUE, FALSE, TRUE))
# [1] 1 3

# Like the which() function, the functions any() and all() take logical vectors as
# their argument. The any() function will return TRUE if one or more of the elements
# in the logical vector is TRUE. The all() function will return TRUE if every element
# in the logical vector is TRUE.

any(ints < 0)
# [1] FALSE
all(ints > 0)
# [1] TRUE



