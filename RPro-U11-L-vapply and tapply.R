# RPro-U11-L-vapply and tapply  

# sapply() tries to 'guess' the correct format of the result, vapply()
# allows you to specify it explicitly. If the result doesn't match the format you
# specify, vapply() will throw an error, causing the operation to stop. This can
# prevent significant problems in your code that might be caused by getting
# unexpected return values from sapply().

# Try vapply(flags, unique, numeric(1)), which says that you expect each element of the result 
# to be a numeric vector of length 1. Since this is NOT actually the case, YOU WILL GET AN ERROR.
vapply(flags, unique, numeric(1))

# If we wish to be explicit about the format of the result we expect, we can use 
# vapply(flags, class, character(1)). The 'character(1)' argument tells R that we
# expect the class function to return a character vector of length 1 when applied to
# EACH column of the flags dataset.
vapply(flags, class, character(1))
#       name   landmass       zone       area population   language   religion 
#   "factor"  "integer"  "integer"  "integer"  "integer"  "integer"  "integer" 
# ...

# You might think of vapply() as being 'safer' than sapply(), since it requires you
# to specify the format of the output in advance, instead of just allowing R to
# 'guess' what you wanted. In addition, vapply() may perform faster than sapply()
# for large datasets. However, when doing data analysis interactively (at the
# prompt), sapply() saves you some typing and will often be good enough.

# As a data analyst, you'll often wish to split your data up into groups based on
# the value of some variable, then apply a function to the members of each group.

# the proportion of flags containing an animate image WITHIN each landmass group.
tapply(flags$animate, flags$landmass, mean)
#         1         2         3         4         5         6 
# 0.4193548 0.1764706 0.1142857 0.1346154 0.1538462 0.3000000 

# summary of population(in millions) for countries with the color red on their flag with

tapply(flags$population, flags$red, summary)
# $`0`
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#    0.00    0.00    3.00   27.63    9.00  684.00 

# $`1`
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#     0.0     0.0     4.0    22.1    15.0  1008.0

