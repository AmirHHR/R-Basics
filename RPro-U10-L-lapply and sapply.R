# RPro-U10-L-lapply and sapply

# how to use lapply() and sapply(), known as loop functions.

# to preview the first six lines of the dataset.
 head(flags)
#             name landmass zone area population language religion bars stripes
# 1    Afghanistan        5    1  648         16       10        2    0       3
# 2        Albania        3    1   29          3        6        6    0       0
# 3        Algeria        4    1 2388         20        8        2    2       0
# 4 American-Samoa        6    3    0          0        1        1    0       0
# 5        Andorra        3    1    0          0        6        0    3       0
# 6         Angola        4    2 1247          7       10        5    0       2

# check out the dimensions of the dataset
dim(flags)
# [1] 194  30

# open a more complete description of the dataset in a separate text file
viewinfo()

class(flags)
# [1] "data.frame"

# we need to call the class() function on each individual column

The lapply() function takes a list as input, applies a function to each element
of the list, then returns a list of the same length as the original one.

# a data frame is really just a list of vectors
# print each column with its value seperately
as.list(flags)

# apply the class() function to each column of the flags dataset 
cls_list <- lapply(flags, class)
# Note that you just supply the name of the function without the usual parentheses after it.

cls_list
# $name
# [1] "factor"

# $landmass
# [1] "integer"
# ...

# The 'l' in 'lapply' stands for 'list'
class(cls_list)
# [1] "list"

# The output would be considerably more compact if we could represent it as a
# vector instead of a list.

# You may remember from a previous lesson that lists are most helpful for storing
# multiple classes of data. so, simplified cls_list to a character vector
as.character(cls_list)
#  [1] "factor"  "integer" "integer" "integer" "integer" "integer" "integer"
#  [8] "integer" "integer" "integer" "integer" "integer" "integer" "integer"
# [15] "integer" "integer" "integer" "factor"  "integer" "integer" "integer"
# [22] "integer" "integer" "integer" "integer" "integer" "integer" "integer"
# [29] "factor"  "factor" 

# sapply() allows you to automate this process by calling lapply() behind the
# scenes, but then attempting to simplify (hence the 's' in 'sapply') the result
# for you. Use sapply() the same way you used lapply() to get the class of each
# column of the flags dataset and store the result in cls_vect. 
cls_vect <- sapply(flags, class)

class(cls_vect)
# [1] "character"

# In general, if the result is a list where every element is of length one, then
# sapply() returns a vector. If the result is a list where every element is a
# vector of the same length (> 1), sapply() returns a matrix. If sapply() can't
# figure things out, then it just returns a list, no different from what lapply()
# would give you.

# Columns 11 through 17 of our dataset are indicator variables, each representing
# a different color. The value of the indicator variable is 1 if the color is
# present in a country's flag and 0 otherwise.

# the total number of countries with the color orange on their flag
sum(flags$orange)
# [1] 26

# we want to repeat this operation for each of the colors recorded in the dataset.
# First, use flag_colors <- flags[, 11:17] to extract the columns containing the
# color data and store them in a new data frame called flag_colors. (Note the
# comma before 11:17. This subsetting command tells R that we want all rows, but
# only columns 11 through 17.)
flag_colors <- flags[,11:17]
# look at the first 6 lines of flag_colors
head(flag_colors)
#   red green blue gold white black orange
# 1   1     1    0    1     1     1      0
# 2   1     0    0    1     0     1      0
# 3   1     1    0    0     1     0      0
# 4   1     0    1    1     1     0      1
# 5   1     0    1    1     0     0      0
# 6   1     0    0    1     0     1      0
lapply(flag_colors, sum)
# $red
# [1] 153

# $green
# [1] 91

# ...

sapply(flag_colors, sum)
#    red  green   blue   gold  white  black orange 
#    153     91     99     91    146     52     26 

# sapply() returns a matrix when each element of the list is a vector of the same length (> 1)
flag_shapes <- flags[, 19:23]

# the minimum and maximum number of times each shape or design appears
# The range() function returns the minimum and maximum of its first argument
# which should be a numeric vector.
lapply(flag_shapes, range)
# $circles
# [1] 0 4

# $crosses
# [1] 0 2

# $saltires
# [1] 0 1

# $quarters
# [1] 0 4

# $sunstars
# [1]  0 50

shape_mat <- sapply(flag_shapes, range)
shape_mat
#      circles crosses saltires quarters sunstars
# [1,]       0       0        0        0        0
# [2,]       4       2        1        4       50

# Each column of shape_mat gives the minimum (row 1) and maximum (row 2) number of times
# its respective shape appears in different flags.
class(shape_mat)
# [1] "matrix"

# When given a vector, the unique() function returns a vector with all duplicate elements removed
unique(c(3, 4, 5, 5, 5, 6, 6))
# [1] 3 4 5 6

# the unique values for each variable in the flags dataset
unique_vals <- lapply(flags, unique)
lapply(unique_vals, length)
# $name
# [1] 194

# $landmass
# [1] 6

# ...

sapply(unique_vals, length)
#       name   landmass       zone       area population   language   religion       bars 
#        194          6          4        136         48         10          8          5 
#    stripes    colours        red      green       blue       gold      white      black 
#         12          8          2          2          2          2          2          2 
#     orange    mainhue    circles    crosses   saltires   quarters   sunstars   crescent 
#          2          8          4          3          2          3         14          2 
#   triangle       icon    animate       text    topleft   botright 
#          2          2          2          2          7          8 

# apply a function that is not yet defined in the context of loop functions

# Pretend you are interested in only the second item from each element of the
# unique_vals list that you just created. Since each element of the unique_vals list is
# a vector and we're not aware of any built-in function in R that returns the second
# element of a vector, we will construct our own function.

# lapply(unique_vals, function(elem) elem[2]) will return a list containing the second
# item from each element of the unique_vals list. Note that our function takes one
# argument, elem, which is just a 'dummy variable' that takes on the value of each
# element of unique_vals, in turn.

lapply(unique_vals, function(elem) elem[2])
# $name
# [1] Albania
# 194 Levels: Afghanistan Albania Algeria ... Zimbabwe

# $landmass
# [1] 3

# ...

# Our function has no name and disappears as soon as lapply() is done using it. So-called 
# 'anonymous functions' can be very useful when one of R's built-in functions isn't an option.
