# RPro-U15-L-Base Graphics 

# Load the included data frame cars with data(cars)
data(cars)

head(cars)
#   speed dist
# 1     4    2
# 2     4   10
# 3     7    4
# 4     7   22
# 5     8   16
# 6     9   10

# Before plotting, it is always a good idea to get a sense of the data. Key R commands for
# doing so include, dim(), names(), head(), tail() and summary().

# Run the plot() command on the cars data frame.
plot(cars)
plot(x = cars$speed,y = cars$dist)
plot(y = cars$speed,x = cars$dist)
plot(x = cars$speed, y = cars$dist, xlab = "Speed")
plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance")
plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance")
plot(cars, main = "My Plot")
plot(cars, sub = "My Plot Subtitle")

# Plot cars so that the plotted points are colored red.
plot(cars, col = 2)

# Plot cars while limiting the x-axis to 10 through 15
plot(cars, xlim = c(10, 15))

# Plot cars using triangles. ?points
plot(cars, pch = 2)

data(mtcars)
# Anytime that you load up a new data frame, you should explore it before using it

# Use boxplot() with formula = mpg ~ cyl and data = mtcars to create a box plot.
boxplot(formula = mpg ~ cyl, data = mtcars)

# When looking at a single variable, histograms are a useful tool.
hist(mtcars$mpg)


