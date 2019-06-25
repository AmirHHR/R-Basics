# RPro-U6-L-Subsetting Vectors

# to clear your workspace.
rm(list=ls())

# we'll see how to extract elements from a vector based on some conditions that we specify.
# view the first ten elements of x
x[1:10]

# A vector of all NAs in x
x[is.na(x)]

# A vector of all not NAs in x
y <- x[!is.na(x)]

# A vector of all the positive elements of y
y[y > 0]

x[x>0]
#  [1] 1.4984835        NA        NA        NA 0.6789493 1.0386886        NA        NA 1.3966341        NA
# [11]        NA 0.7046315        NA 0.6976582 0.9366451        NA        NA 0.2008919        NA        NA
# [21]        NA        NA        NA 1.5381067        NA        NA        NA        NA        NA 0.3057229
# [31] 0.3166927 0.4219535

# Since NA is not a value, but rather a placeholder for an unknown quantity, the expression 
# NA > 0 evaluates to NA. Hence we get a bunch of NAs mixed in with our positive numbers when 
# we do this.

# A vector of all not NAs and positive elements of x
# only values of x that are both non-missing AND greater than zero.
x[!is.na(x) & x > 0]

# R uses 'one-based indexing' which means the first element of a vector is considered element 1.

# figure out the 3rd, 5th, and 7th elements of x
x[c(3,5,7)]

# give all elements of x EXCEPT for the 2nd and 10 elements
x[c(-2,-10)]
x[-c(2, 10)]

# Create a numeric vector with three named elements foo = 11, bar = 2, norf = NA
vect <- c(foo = 11, bar = 2, norf = NA)
vect
#  foo  bar norf 
#   11    2   NA

# get the names of vect
names(vect)
# [1] "foo"  "bar"  "norf"

vect2 <- c(11, 2, NA)
names(vect2) <- c("foo", "bar", "norf")
vect2
#  foo  bar norf 
#   11    2   NA 

The identical() function tells us if its first two arguments are, well, identical.
identical(vect,vect2)
# [1] TRUE

# give us the second element of vect
vect["bar"]




