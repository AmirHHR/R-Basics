# RPro-U13-L-Simulation

# generate random numbers

# simulate rolling four six-sided dice
sample(1:6, 4, replace = TRUE)
# [1] 6 6 2 6
# randomly select four numbers between 1 and 6, WITH replacement.

# repeat the command to see how your result differs. (The probability of rolling
# the exact same result is (1/6)^4 = 0.00077

# 10 numbers between 1 and 20, WITHOUT replacement.
sample(1:20, 10)
#  [1] 11 13  1 16  2 12 18  4 19  8

# LETTERS is a predefined variable containing a vector of 26 letters of the English alphabet.
LETTERS
#  [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T"
# [21] "U" "V" "W" "X" "Y" "Z"

# permute, or rearrange, the elements of LETTERS vector
sample(LETTERS)
#  [1] "Z" "H" "A" "B" "K" "N" "X" "D" "O" "I" "J" "R" "Q" "E" "L" "C" "S" "G" "P" "U"
# [21] "W" "F" "M" "V" "Y" "T"

# when 'size' argument to sample() is not specified, R takes a sample equal in size to the 
# vector from which you are sampling.

# suppose we want to simulate 100 flips of an unfair two-sided coin. This particular coin 
# has a 0.3 probability of landing 'tails',0, and a 0.7 probability of landing 'heads', 1,
flips <- sample(c(0,1), 100, replace = TRUE, c(0.3,0.7))
flips
#   [1] 1 0 1 1 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 1 0 0
#  [41] 0 1 1 1 1 1 1 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 1 1
#  [81] 1 0 1 0 1 1 0 1 1 1 1 0 0 1 1 1 1 0 1 1
sum(flips)
# [1] 74

# simulate a binomial random variable
# Each probability distribution in R has an r*** function (for "random"), a d***
# function (for "density"), a p*** (for "probability"), and q*** (for "quantile").

# A binomial random variable represents the number of 'successes' (heads) in a given
# number of independent 'trials' (coin flips). Therefore, we can generate a single
# random variable that represents the number of heads in 100 flips of our unfair coin
# Note that you only specify the probability of 'success' (heads) and NOT 'failure' (tails)
rbinom(1,size = 100,prob = 0.7)
# [1] 67

# see all of the 0s and 1s, 100 observations, each of size 1, with success probability of 0.7
flips2 <- rbinom(n=100, size = 1, prob = 0.7)
flips2
#   [1] 1 1 1 1 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1
#  [41] 0 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 0 0 1 0 1 1
#  [81] 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1

sum(flips2)
# [1] 70

# The standard normal distribution has mean 0 and standard deviation 1.
rnorm(10)
#  [1]  0.2736270 -1.1116136  1.1938555  0.4005974  0.3609235  1.8320516  0.3320918
#  [8]  1.7679669 -0.2365751  2.0158477

# generate 10 random numbers from a normal distribution with mean 100 and standard deviation 25
rnorm(10, mean = 100, sd = 25)
#  [1]  72.18358  64.52909  76.08578 105.98331  74.01113 119.09490  87.42972  57.93924
#  [9]  77.00478  35.86632

# simulate 100 *groups* of random numbers, each containing 5 values generated from a Poisson 
# distribution with mean 10
# Generate 5 random values from a Poisson distribution with mean 10
rpois(5,10)
# [1] 13  8  7  5 13
my_pois <- replicate(100, rpois(5, 10))
my_pois
#      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12] [,13] [,14] [,15]
# [1,]   10   10   15   11    6    9    9   12    8    14    12     6    14    13    12
# [2,]   13    8   10    6   14    9    8    8   13     9    17    14     8     9     7
# [3,]   12   12   12   11   12   10   16   10   10     8    16    10     7    15    13
# [4,]   13    7   10   16    7    9   13   14    6    11     9     6     6     5     7
# [5,]    6   12   12   10   11    9   14   11   15     6    14     7    12    11    11
#     ...

# find the mean of each column
cm <- colMeans(my_pois)
cm
# [1] 10.8  9.8 11.8 10.8 10.0  9.2 12.0 11.0 10.4  9.6 13.6  8.6  9.4 10.6 10.0  8.2
#  [17] 10.0 11.4 10.6  7.4  9.8  8.6  9.2 13.4  9.8 10.4 10.4 11.8  8.6  9.2  9.8  8.6
#  [33] 10.8 10.8  7.4 10.6  9.6 11.0  8.8 10.4 10.4 10.6 10.4  9.8 10.8 12.2  7.4 12.0
#  [49]  9.4  8.6  8.4 11.2  7.8 10.4  9.2  8.2 10.8 11.2 10.8  9.4  9.6  9.4  9.2  9.4
#  [65]  9.8  8.8  9.2  9.4  9.2  8.8  9.6  9.4 11.2  9.8  7.6 10.4  8.4  9.6 10.0 10.6
#  [81] 11.2 10.2 10.8  9.2  9.8  9.4  9.0  9.2 10.0 10.8 10.8 10.0 10.0  9.2 11.2  9.2
#  [97]  9.6 10.4 12.4 11.2

# take a look at the distribution of our column means by plotting a histogram
hist(cm)

# All of the standard probability distributions are built into R, including
# exponential (rexp()), chi-squared (rchisq()), gamma (rgamma())

