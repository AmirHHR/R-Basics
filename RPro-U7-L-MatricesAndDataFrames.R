# RPro-U7-L-Matrices and Data Frames

# The main difference, as you'll see, is that matrices can only contain a single class of data, 
# while data frames can consist of many different classes of data.

my_vector <- 1:20

length(my_vector)
# [1] 20

# The dim() function allows you to get OR set the `dim` attribute for an R object.
dim(my_vector) <- c(4,5)

# The dim() function tells us the 'dimensions' of an object.
dim(my_vector)
# [1] 4 5

attributes(my_vector)
# $dim
# [1] 4 5

my_vector
#      [,1] [,2] [,3] [,4] [,5]
# [1,]    1    5    9   13   17
# [2,]    2    6   10   14   18
# [3,]    3    7   11   15   19
# [4,]    4    8   12   16   20

# let's confirm it's actually a matrix by using the class() function.
class(my_vector)
# [1] "matrix"

my_matrix <- my_vector

# create a matrix containing the same numbers (1-20) and dimensions (4 rows, 5 columns)
my_matrix2 <- matrix(data =  1:20, nrow = 4,ncol = 5)

# let's confirm that my_matrix and my_matrix2 are actually identical.
identical(my_matrix,my_matrix2)
# [1] TRUE

# creating a character vector containing the names of our patients Bill, Gina, Kelly, and Sean.
patients <- c("Bill", "Gina", "Kelly","Sean")

# combine the patients vector and my_matrix
cbind(patients,my_matrix)
#      patients                       
# [1,] "Bill"   "1" "5" "9"  "13" "17"
# [2,] "Gina"   "2" "6" "10" "14" "18"
# [3,] "Kelly"  "3" "7" "11" "15" "19"
# [4,] "Sean"   "4" "8" "12" "16" "20"

# It appears that combining the character vector with our matrix of numbers caused everything 
# to be enclosed in double quotes. This means we're left with a matrix of character strings, 
# which is no good.

# matrices can only contain ONE class of data. Therefore, when we tried to combine a character 
# vector with a numeric matrix, R was forced to 'coerce' the numbers to characters, hence the 
# double quotes.

# It looks like the data.frame() function allowed us to store our character vector of names right 
# alongside our matrix of numbers.
my_data <- data.frame(patients, my_matrix)
my_data
#   patients X1 X2 X3 X4 X5
# 1     Bill  1  5  9 13 17
# 2     Gina  2  6 10 14 18
# 3    Kelly  3  7 11 15 19
# 4     Sean  4  8 12 16 20

class(my_data)
# [1] "data.frame"

# Create a character vector called cnames that contains the following values (in order) --
# "patient", "age", "weight", "bp", "rating", "test".
cnames <- c("patient", "age", "weight", "bp", "rating", "test")

# set the column names attribute for our data frame.
colnames(my_data) <- cnames
my_data
#   patient age weight bp rating test
# 1    Bill   1      5  9     13   17
# 2    Gina   2      6 10     14   18
# 3   Kelly   3      7 11     15   19
# 4    Sean   4      8 12     16   20