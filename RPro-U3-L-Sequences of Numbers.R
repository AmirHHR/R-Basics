# RPro-U2-L-Sequences of Numbers

# In this lesson, you'll learn how to create sequences of numbers in R.

# create a sequence of numbers
1:20
# [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

pi:10
# [1] 3.141593 4.141593 5.141593 6.141593 7.141593 8.141593 9.141593

15:1
# [1] 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1

# Pull up the documentation for `:` now.
?`:`

seq(1,20)
# [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

seq(0,10,by=0.5)
# [1]  0.0  0.5  1.0  1.5  2.0  2.5  3.0  3.5  4.0  4.5  5.0  5.5  6.0  6.5  7.0  7.5  8.0
# [18]  8.5  9.0  9.5 10.0

# sequence of 30 numbers between 5 and 10
seq(5,10,length=30)
#  [1]  5.000000  5.172414  5.344828  5.517241  5.689655  5.862069  6.034483  6.206897
#  [9]  6.379310  6.551724  6.724138  6.896552  7.068966  7.241379  7.413793  7.586207
# [17]  7.758621  7.931034  8.103448  8.275862  8.448276  8.620690  8.793103  8.965517
# [25]  9.137931  9.310345  9.482759  9.655172  9.827586 10.000000

# To confirm that my_seq has length 30
length(my_seq)
# [1] 30

# generate a sequence of integers from 1 to N
1:length(my_seq)
seq(along.with=my_seq)
seq_along(my_seq)
# [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
# [29] 29 30

# creating a vector that contains 4 zeros
rep(0,times=4)
# [1] 0 0 0 0

# a vector which contains 10 repetitions of the vector (0, 1, 2)
rep(c(0,1,2),times=10)
# [1] 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2

# a vector which contains 10 zeros, then 10 ones, then 10 twos
rep(c(0,1,2),each=10)
# [1] 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2