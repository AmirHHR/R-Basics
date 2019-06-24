# RPro-U4-L-Vectors

# An atomic vector contains exactly one data type, whereas a list may contain multiple data types.
# Logical vectors can contain the values TRUE, FALSE, and NA (for 'not available').
num_vect <- c(0.5,55,-10,6)
tf <- num_vect<1
tf
# [1]  TRUE FALSE  TRUE FALSE

# `==` for exact equality, and `!=` for inequality.
# A | B logical 'or'
# A & B logical 'and'
# !A is the negation of A

# Create a character vector that contains the following words: "My", "name", "is"
my_char <- c("My" , "name" , "is")
my_char
# [1] "My"   "name" "is"

# join the elements of my_char together into one continuous character string
paste(my_char , collapse = " ")
# [1] "My name is"

# The `collapse` argument to the paste() function tells R that when we join together the elements 
# of the my_char character vector, we'd like to separate them with single spaces.

# To add (or 'concatenate') your name to the end of my_char
my_name <- c(my_char, "Amir")

# we can join two character vectors that are each of length 1 (i.e. join two words). Try where 
# the `sep` argument tells R that we want to separate the joined elements with a single space
paste("Hello", "world!", sep = " "), 
# [1] "Hello world!"

paste(1:3, c("X", "Y", "Z"), sep = "")
# [1] "1X" "2Y" "3Z"

# LETTERS is a predefined variable in R containing a character vector of all 26 letters in the 
# English alphabet.
paste(LETTERS, 1:4, sep = "-")
# [1] "A-1" "B-2" "C-3" "D-4" "E-1" "F-2" "G-3" "H-4" "I-1" "J-2" "K-3" "L-4" "M-1" "N-2" "O-3" 
# "P-4" "Q-1" "R-2" "S-3" "T-4" "U-1" "V-2" "W-3" "X-4" "Y-1" "Z-2"

#  R simply recycles, or repeats, 1:4 until it matches the length of LETTERS.

