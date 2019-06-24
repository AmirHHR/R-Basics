# RPro-U2-L-Workspace and Files

# determine the current working directory.
getwd()

# List all the objects in your local workspace using ls().
ls()

# List all the files in your working directory using list.files() or dir().
list.files()
dir()

# Check out the help page for list.files with the command with ?list.files.
?list.files

# Using the args() function on a function name to see which arguments a function can take.
args(list.files)

# Assign the value of the current working directory to a variable called "old.dir".
old.dir <- getwd()

# create a directory in the current working directory called "testdir".
dir.create("testdir")

# Set your working directory to "testdir"
setwd("testdir")

# Create a file in your working directory called "mytest.R"
file.create("mytest.R")

# Check to see if "mytest.R" exists in the working directory.
file.exists("mytest.R")

# Access information about the file "mytest.R"
file.info("mytest.R")

#          size isdir mode               mtime               ctime
# mytest.R  0   FALSE 666        2019-06-24 14:33:35    2019-06-24 14:33:13
#                        atime        exe
# mytest.R       2019-06-24 14:33:13   no

# You can use the $ operator to grab specific items.
file.info("mytest.R")$mode

# Change the name of the file "mytest.R" to "mytest2.R"
file.rename("mytest.R", "mytest2.R")

# delete mytest2.R
file.remove('mytest2.R')

# Make a copy of "mytest2.R" called "mytest3.R".
file.copy("mytest2.R", "mytest3.R")

# Create a directory in the current working directory called "testdir2" and a subdirectory for 
# it called "testdir3", all in one command by using. In order to create nested directories, 
# 'recursive' must be set to TRUE. 
dir.create(file.path('testdir2', 'testdir3','testdir4'), recursive = TRUE)