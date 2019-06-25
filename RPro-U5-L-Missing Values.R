# RPro-U5-L-Missing Values

# NA is used to represent any value that is 'not available' or 'missing' (in the statistic).

# Any operation involving NA generally yields NA as the result.
x <- c(44, NA, 5, NA)
x * 3
# [1] 132  NA  15  NA

# lets create a vector containing 1000 draws from a standard normal distribution
y <- rnorm(1000)

# let's create a vector containing 1000 NAs
z <- rep(NA, 1000)

# let's select 100 elements at random from these 2000 values (combining y and z) such that we 
# don't know how many NAs we'll wind up with or what positions they'll occupy in our final vector
my_data <- sample(c(y,z), 100)

# where our NAs are located in our data?
my_na <- is.na(my_data)
my_na

#   [1]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
#  [15] FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE
#  [29]  TRUE  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE
#  [43]  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE
#  [57] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE
#  [71] FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE
#  [85]  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE
#  [99]  TRUE  TRUE

# Everywhere you see a TRUE, you know the corresponding element of my_data is NA.

my_data == NA

# [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
# [29] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
# [57] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
# [85] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

# The reason you got a vector of all NAs is that NA is not really a value, but just a
# placeholder for a quantity that is not available. Therefore the logical expression is
# incomplete and R has no choice but to return a vector of the same length as my_data
# that contains all NAs.

# R represents TRUE as the number 1 and FALSE as the number 0. Therefore, if we take the sum of 
# a bunch of TRUEs and FALSEs, we get the total number of TRUEs.
sum(my_na)
# [1] 50

# second type of missing value -- NaN, which stands for 'not a number'. To generate NaN, try 
# dividing (using a forward slash) 0 by 0 now.
0/0
# [1] NaN

# In R, Inf stands for infinity
Inf - Inf
# [1] NaN
