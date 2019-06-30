# RPro-U12-L-Looking at Data 

# Whenever you're working with a new dataset, the first thing you should do is look at it! What 
# is the format of the data? What are the dimensions? What are the variable names? How are the 
# variables stored? Are there missing data? Are there any flaws in the data?

# It's very common for data to be stored in a data frame. It is the default class for
# data read into R using functions like read.csv() and read.table()
class(plants)
# [1] "data.frame"

dim(plants)
# [1] 5166   10

nrow(plants)
# [1] 5166

ncol(plants)
# [1] 10

# how much space the dataset is occupying in memory
object.size(plants)
# 686080 bytes

# return a character vector of column names.
names(plants)
#  [1] "Scientific_Name"      "Duration"             "Active_Growth_Period"
#  [4] "Foliage_Color"        "pH_Min"               "pH_Max"              
#  [7] "Precip_Min"           "Precip_Max"           "Shade_Tolerance"     
# [10] "Temp_Min_F"

# By default, head() shows you the first six rows of the data. You can alter this
# behavior by passing as a second argument the number of rows you'd like to view.
head(plants,10)
tail(plants,15)

# how each variable is distributed and how much of the dataset is missing.
summary(plants)

# understanding the structure of your data
str(plants)




