# RTutorial-U1-INTRODUCTION

# TRUE and FALSE are the logical constants in R.
# NULL represents the absence of a value or an undefined value.
# Inf is for “Infinity”, for example when 1 is divided by 0 whereas NaN is for “Not a Number”, 
# for example when 0 is divided by 0.
# NA stands for “Not Available” and is used to represent missing values.
# R is a case sensitive language. Which mean that TRUE and True are not the same.

# Rules for writing Identifiers in R
# Identifiers can be a combination of letters, digits, period (.) and underscore (_).
# It must start with a letter or a period. If it starts with a period, it cannot be followed by 
# a digit.
# Reserved words in R cannot be used as identifiers.

# Valid identifiers in R
# total, Sum, .fine.with.dot, this_is_acceptable, Number5

# Numeric Constants
# All numbers fall under this category. They can be of type integer, double or complex.
# It can be checked with the typeof() function.
# Numeric constants followed by L are regarded as integer and those followed by i are regarded 
# as complex.
typeof(5)
# [1] "double"
typeof(5L)
# [1] "integer"
typeof(5i)
# [1] "complex"

# Numeric constants preceded by 0x or 0X are interpreted as hexadecimal numbers.
0xff
# [1] 255
0XF + 1
# [1] 16

# Character Constants
# Character constants can be represented using either single quotes (') or double quotes (") 
# as delimiters.
'example'
# [1] "example"
typeof("5")
# [1] "character"

# Built-in Constants
# Some of the built-in constants defined in R along with their values is shown below.
LETTERS
# [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S"
# [20] "T" "U" "V" "W" "X" "Y" "Z"
letters
# [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s"
# [20] "t" "u" "v" "w" "x" "y" "z"
pi
# [1] 3.141593
month.name
# [1] "January"   "February"  "March"     "April"     "May"       "June"     
# [7] "July"      "August"    "September" "October"   "November"  "December" 
month.abb
# [1] "Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov" "Dec"

# Operations
# %%	Modulus (Remainder from division)
# %/%	Integer Division
9%%4
# [1] 1
9%/%4
# [1] 2

# ==	Equal to
# !=	Not equal to
2==3
# [1] FALSE
2!=3
# [1] TRUE
3==3
# [1] TRUE

# Operator Precedence in R
# ^	        Exponent	             Right to Left
# -x, +x	Unary minus, Unary plus	 Left to Right
# %%	    Modulus	                 Left to Right
# *, /	    Multiplication, Division Left to Right
# +, –	    Addition, Subtraction	 Left to Right
# <, >, <=, >=, ==, !=	Comparisions Left to Right
# !	        Logical NOT	             Left to Right
# &, &&	    Logical AND	             Left to Right
# |, ||	    Logical OR             	 Left to Right
# ->, ->>	Rightward assignment	 Left to Right
# <-, <<-	Leftward assignment	     Right to Left
# =	        Leftward assignment	     Right to Left

# Operation on Vectors
# The above mentioned operators work on vectors. The variables used above were in fact single 
# element vectors.
# We can use the function c() (as in concatenate) to make vectors in R.
# All operations are carried out in element-wise fashion. Here is an example.
x <- c(2,8,3)
y <- c(6,4,1)
x+y
# [1]  8 12  4
x>y
# [1] FALSE  TRUE  TRUE

# When there is a mismatch in length (number of elements) of operand vectors, the elements 
# in shorter one is recycled in a cyclic manner to match the length of the longer one.
# R will issue a warning if the length of the longer vector is not an integral multiple of the 
# shorter vector.
>x <- c(2,1,8,3)
y <- c(9,4)
x+y # Element of y is recycled to 9,4,9,4
# [1] 11  5 17  7
x-1 # Scalar 1 is recycled to 1,1,1,1
# [1] 1 0 7 2
x+c(1,2,3)
# [1]  3  3 11  4
# Warning message:
# In x + c(1, 2, 3) :
# longer object length is not a multiple of shorter object length


# Logical Operators in R
# !	Logical NOT
# &	Element-wise logical AND
# &&	Logical AND
# |	Element-wise logical OR
# ||	Logical OR

# Operators & and | perform element-wise operation producing result having length of the 
# longer operand.
# But && and || examines only the first element of the operands resulting into a single length 
# logical vector.
# Zero is considered FALSE and non-zero numbers are taken as TRUE. An example run.
x <- c(TRUE,FALSE,0,6)
y <- c(FALSE,TRUE,FALSE,TRUE)
!x
# [1] FALSE  TRUE  TRUE FALSE
x&y
# [1] FALSE FALSE FALSE  TRUE
x&&y
# [1] FALSE
x|y
# [1]  TRUE  TRUE FALSE  TRUE
x||y
# [1] TRUE

# The operators <- and = can be used, almost interchangeably, to assign to variable in the 
# same environment.
# The <<- operator is used for assigning to variables in the parent environments (more like 
# global assignments). The rightward assignments, although available are rarely used.
x <- 5
x
# [1] 5
x = 9
x
# [1] 9
10 -> x
x
# [1] 10