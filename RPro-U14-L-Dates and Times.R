# RPro-U14-L-Dates and Times 

# Dates are represented by the 'Date' class and times are represented by the
# | 'POSIXct' and 'POSIXlt' classes. Internally, dates are stored as the number of days
# | since 1970-01-01 and times are stored as either the number of seconds since
# | 1970-01-01 (for 'POSIXct') or a list of seconds, minutes, hours, etc. (for
# | 'POSIXlt').

# get the current date
d1 <- Sys.Date()
d1
# [1] "2019-07-01"

class(d1)
# [1] "Date"

# to see what d1 looks like internally.
unclass(d1)
# [1] 18078
# That's the exact number of days since 1970-01-01

# if we need to reference a date prior to 1970-01-01
d2 <- as.Date("1969-01-01")
unclass(d2)
# [1] -365

# access the current date and time
t1 <- Sys.time()
t1
# [1] "2019-07-01 11:56:37 +0430"

class(t1)
# [1] "POSIXct" "POSIXt" 
# POSIXct is just one of two ways that R represents time information.

unclass(t1)
# [1] 1561965997
# number of seconds since the beginning of 1970

# default, Sys.time() returns an object of class POSIXct, but we can coerce the result to POSIXlt
t2 <- as.POSIXlt(Sys.time())
class(t2)
# [1] "POSIXlt" "POSIXt"
t2
# [1] "2019-07-01 12:08:07 +0430"

unclass(t2)
$sec
# [1] 7.67375

# $min
# [1] 8

# $hour
# [1] 12

# $mday
# [1] 1

# $mon
# [1] 6

# $year
# [1] 119

# $wday
# [1] 1

# $yday
# [1] 181

# $isdst
# [1] 1

# $zone
# [1] "+0430"

# $gmtoff
# [1] 16200

# attr(,"tzone")
# [1] ""      "+0330" "+0430"

str(unclass(t2))
# List of 11
#  $ sec   : num 7.67
#  $ min   : int 8
#  $ hour  : int 12
#  $ mday  : int 1
#  $ mon   : int 6
#  $ year  : int 119
#  $ wday  : int 1
#  $ yday  : int 181
#  $ isdst : int 1
#  $ zone  : chr "+0430"
#  $ gmtoff: int 16200
#  - attr(*, "tzone")= chr [1:3] "" "+0330" "+0430"

# just the minutes from the time stored in t2
t2$min
# [1] 8

# The weekdays() function will return the day of week from any date or time object.
weekdays(d1)
# [1] "Monday"

# The months() function also works on any date or time object.
months(t1)
# [1] "July"

# The quarters() function returns the quarter of the year (Q1-Q4) from any date or time object.
quarters(t2)
# [1] "Q3"

# strptime() converts character vectors to POSIXlt. In that sense, it is similar to
# as.POSIXlt(), except that the input doesn't have to be in a particular format (YYYY-MM-DD).
t3 <- "October 17, 1986 08:24"
t4 <- strptime(t3, "%B %d, %Y %H:%M")
t4
# [1] "1986-10-17 08:24:00 +0330"
class(t4)
# [1] "POSIXlt" "POSIXt" 

# there are a number of operations that you can perform on dates and times,
# including arithmetic operations (+ and -) and comparisons (<, ==, etc.)
Sys.time() > t1
# [1] TRUE







