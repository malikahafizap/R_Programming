#___________________ PROGRAMMING IN R ___________________________

#___________________ INTRODUCTION TO R __________________________
# R is a programming language for statistical computing and graphics
# R provides a variety of statistical and graphical techniques
# It it is highly extensible
# Available as free software
# Easy and Friendly to new programmers
# R compiles and runs on wide variety of operating systems
# Latest version 4.1.0
# Developed by Ross Ihaka & Robert Gentleman at the University of Auckland, Newzealand

#___________________ ENVIRONMENTAL SETUP ________________________
# To download R: Go to https://cran.r-project.org/bin/windows/base/ and download the latest version of R (according to the operating system)
# To download Rstudio: Go to https://www.rstudio.com/products/rstudio/download/ and download the latest version of R (according to the operating system)
# To Run R code online: https://www.tutorialspoint.com/execute_r_online.php

#___________________ BASIC SYNTAX _______________________________
# R programs are written either in the Terminal/ Command Prompt or directly in Script files 
# R files are saved with R extension (E.g. first_program.R)
# To launch R in terminal write: $R 
# For Assigning values "<-" operator is used 
Data<-"Learning to Code in R"
# Print function is used to print the values 
print(Data)
# To give comments in R Script "#" is used 

#___________________ VARIABLES __________________________________
# A variable is a named storage that can be used by our program 
# A variable can be assigned value in three ways:
# 1) var_name <- value # leftward operator
# 2) var_name = Value # assignment operator
# 3) var_value -> variable_name # rightward operator
# To see the data type of a variable we use class() function
# To see the list of variables we use ls() function
# To delete a variable we use rm() function

varx <- 23 # declaring a variable
varx
vary <- "Malika"
vary
class(vary) # character
class(varx) # numeric
ls() # lists out the variables we are using in this program
rm(varx) # removes/deletes the variable
ls() # checking out the list of variables. varx removed from the list

#___________________ DATA TYPES _________________________________
# When we create some variable in a memory, then it is stored according to the value inside that variable
# Based on the type of value the memory is allocated
# Following are the basic Data Types:
# 1) Vectors: A combination of multiple values
# 2) List: Can contain many different type of objects/values (including vectors)
# 3) Matrices: A two dimensional Data Set
# 4) Arrays: Multi-Dimensional Data Set
# 5) Factors: Factors store vectors along with labels
# 6) Data Frames: Tabular Data Objects, can have multiple types

#___________________ OPERATORS __________________________________
# Operators are special symbols or phrases that programmers use to check, combine or change values
# E.g. '+' is a operator, used to add two values, like 2+7
# There are two types of operators:
# 1) Unary Operator: operate on one operand (E.g. -4)
# 2) Binary Operator: operate on two operand (E.g. 5+3)
# Operators are further divided into:
# 1) Arithmetic Operators
# 2) Relational Operators
# 3) Logical Operators

# 1) ARITHMETIC OPERATORS________________________________________
# Used to perform arithmetic and mathematical operations (+ - * /)
5 -> var1 # declaring variable with value 5
var2 <- 7 # declaring variable with value 7
print(var1 + var2) # Addition
print(var1 - var2) # Subtraction
print(var1 * var2) # Multiply
print(var1 / var2) # Divide

# 2) RELATIONAL OPERATORS________________________________________
# Used to compare or see the relation between values (> < == != >= 4<=)
5 -> var1 # declaring variable with value 5
var2 <- 7 # declaring variable with value 7
print(var1 > var2) # Greater than
print(var1 < var2) # Less than
print(var1 == var2) # Equal to
print(var1 != var2) # Not equal to
print(var1 >= var2) # Greater than or equal to
print(var1 <= var2) # Less than or equal to

# 3) LOGICAL OPERATORS___________________________________________
# Used to perform logical operation on values (! & | isTRUE(variable))
varx <- TRUE # declaring variable with value true
vary <- FALSE # declaring variable with value false
print(!varx) # Not Operator (changes the given value)
print(varx & vary) # And Operator (performs logical AND operation of two given values)
print(varx | vary) # Or Operator (performs logical OR operation of two given values)
isTRUE(vary) # Checks if the variable is true

#___________________ DECISION MAKING ____________________________
# Decision making structures, evaluate a condition and depending on the result some other code is processed
# There are three types of decision making statements in R
# 1) If Statements
# 2) If-Else Statements
# 3) Switch Statement

# 1) IF STATEMENTS ______________________________________________
# An if statement consists of a Boolean expression followed by one or more statements
# The syntax of if statement is:
# If(boolean_expression)
# {
#   //code to be executed
# }

varx <- 5
if (varx < 4) # Since condition is not satisfied, it doesn't enter in the loop, so no output
{
  print("True")
}

vary <-7
if (vary >3) # Since condition is satisfied, it enters in the loop and output is displayed
{
  print("True")
}

# 2) IF-ELSE STATEMENTS _________________________________________
# An if statement can be followed by an optional else statement, which executes when the Boolean expression is False
# The syntax of if else is:
# If(boolean_expression)
# {
#     //code to be executed
# }else
# {
#     //code to be executed
# }

varx <- 5
if(varx == 5)
{
  print("True") # First condition should be True
}else
{
  print("False") # Second condition should be False
}

vary <- 5
if(vary != 5)
{
  print("True") # First condition should be True
}else
{
  print("False") # Second condition should be False
}

# 3) SWITCH STATEMENTS _________________________________________
# A switch statement allows a variable to be tested for equality against a list of values
# R has the following Switch statement: switch(expression, case1, case2..)
# We can have any number of cases in switch
# No Default is available in switch

x <- switch(
  4,
  "First",
  "Second",
  "Third",
  "Fourth"
)
print(x)

y <- switch(
  3,
  "First",
  "Second",
  "Third",
  "Fourth"
)
print(y)

#___________________ LOOPS ______________________________________
# The concept of executing a block of code Multiple times
# Loops in R, are of following types:
# 1) For Loop: execute statement multiple times, checks condition at the end
# 2) Repeat Loop: repeats the code multiple times
# 3) While Loop: executes code till a condition is satisfied

# 1) FOR LOOP ___________________________________________________
# This loop iterates over a collection of values
# Format:
# for any_Variable in Collection_of_Values
# {
#     //Code to be executed
# }

x <- LETTERS[1:7] # LETTER are built-in constants in R language, that are defined in R by default
for (i in x) # This loop will be executed 7 times
{
  print(i)
}

y <- LETTERS[24:26]
for (i in y) # This loop will be executed 3 times
{
  print(i)
}

# 2) REPEAT LOOP ________________________________________________
# A repeat loop executes a set of statements till a terminate statement is found 
# The syntax of a repeat loop is:
# repeat
#       {     #Commands
#             if(condition)
#             {
#                 break
#             }
#       }

x <- c("Hello World")
count <-2

repeat
  {
    print(x)
    count <- count + 1 # Increments the count
    if (count > 7) # Hello World will be printed 6 times
      {
        break
      }
  }

y <- c("Malika Pasha")
count <- 5
repeat{
  print(y)
  count <- count+1 # Increments the count
  if (count == 10) # Malika Pasha will be printed 5 times
    {
    break
    }
  
}

# 3) WHILE LOOP _________________________________________________
# Executes a set of statements till a condition is True
# Format:
# While(Condition)
# { 
#     //Code to be executed
# }

values <- c("While Loop") # variable declaration
count <- 5 # variable declaration
while (count < 7) # while count<5, the loop will be executed
{
  print(values)
  count = count + 1 # count will increment and again the condition will be checked
}

var <- c("Malika Pasha")
count <- 9
while (count < 10)
{
  print(var)
  count = count+1
}

#___________________ ARRAYS _____________________________________
# Used to store ordered list of values of same type (i.e. values stored in an array must be of same type)
# Index starts with 1 in R
# Last index of the array in R is equal to the number of elements in the array
# In an array [3,8,1,0,5,-2,32] -- 3 has the index 1 & 32 has the index 7
# How to:
# 1) Create Array
# 2) Access Array
# 3) Modify Array

  # Creating two vectors of different lengths
vector1 <- c(6,2,1) # vector 1 with 3 values
vector2 <- c(10,16,22,43,15,25) # vector 2 with 6 values

  # Vectors as input to the array
#array function is used to create array from two vectors (combined together)
#dim - dimension of the array
# dim = c(3,3,2) - means - 3 Rows, 3 Columns & 2 Arrays
result <-array(c (vector1, vector2), dim = c(3,3,2))
print(result)

 # Accessing array elements
print(result[1,1,1]) # Trying to access the 1st element from 1st row & the 1st column from the 1st matrix 
print(result[3,3,1]) # Trying to access the 3rd element from the 3rd row & the 1st column from the 1st matrix

 # Manipulating Array
mat1 <- result[2,2,1] # storing the result of the 2nd element in the 2nd row & 2nd column in mat 1
print(mat1) # ans will be 16
mat2 <- result[3,3,1] # storing the result of the 2nd element in the 3rd row & 3rd column in mat 2
print(mat2) # ans will be 25
print(mat1 + mat2) # ans will be 41

#___________________ FUNCTIONS __________________________________
# Function is a se of statements combined together to perform a specific task
# Syntax:
# functionName <- function(Arguments_optional)
# {
#   //Statements
# }
# How to:
# 1) Create a Function
# 2) Call a Function

  # Defining a function
afunc <- function(a) # a is the argument that needs to be passed while calling the function
{
  for (i in 1:a) # value (i) ranges from 1 to the ath element
  {
    b <- i*2
    print(b)
  }
}
  # Calling a function
afunc(3) # a takes values 1,2,3

#___________________ STRINGS ____________________________________
# Values written inside single or double quotes are called strings 
# E.g. "Malika", 'Pasha'
# Quotes can't be mixed, if a string has double quote in beginning, ending should be the same as well 
# Examples of Valid and invalid strings:
# "Hello", 'Everyone', "Good", 'Day' ----Valid strings
# 'Hello", "Everyone"Have", 'a"Good"Day' ----Invalid strings
# How to Create and manipulate strings using predefined functions:
  
  # Valid Strings
c <- "Single Quote ' in between Double Quotes"
print(c)
d <- 'Double Quotes " in between Single Quote'
print(d)
 
   # Invalid String
#e <- 'Mixed Quotes"
#print(e)
#f <- 'Single Quote ' inside Single Quote'
#print(f)
  
  # Manipulate Strings
abc <- "Malika Pasha"
def <- 'How'
hij <- "are you feeling?"
print(paste(abc,def,hij)) # Concatenated string
print(paste(abc,def,hij, sep = "-")) # Concatenated string with hyphen as a separator
print(paste(abc,def,hij, sep = "", collapse = "")) # Concatenated string with collapse parameter
# Collapse removes the space within the adjacent string

#___________________ VECTORS ____________________________________
# Vectors are the most basic R data objects
# They are further divided into six types:
# Character: e.g. "ABC"
# Double: stores decimal values e.g. 12.9
# Complex: e.g. 2+8i (i means iota in complex mathematics)
# Raw: converts a character value into a raw value e.g. charToRaw("val")
# Integer: e.g. 45L
# Logical: stores boolean values e.g. True/False
# How to Create and Modify vectors using predefined functions:

  # Atomic vector of type Character
print("abc")
  # Atomic Vector of type Double
print(12.5)
  # Atomic Vector of type Complex
print(2+3i)
  # Atomic Vector of type Raw
print(charToRaw("Malika"))
  # Atomic Vector of type Integer
print(63L)
  # Atomic Vector of type Logical
print(TRUE)
  
  # Modifying Vectors
    # Creating two vectors
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11,0,8,1,2)
    # Vector Addition
add.result <-v1+v2
print(add.result)
    # Vector Subtraction
sub.result <- v1-v2
print(sub.result)
    # Vector Multiplication
multi.result <- v1*v2
print(multi.result)
    # Vector Division
divi.result <- v1/v2
print(divi.result)

#___________________ LIST _______________________________________
# List can contain elements of different data types
# It can contain numbers, vectors or lists inside itself
# List is created using list() function
# Syntax: listName <- list(Values)
# How to create and manipulate lists:

  # Create a list containing strings, numbers, vectors and a logical value
list_data <- list("Red", "Green", c(21,32,11), TRUE, 51,.23, 119.1)
print(list_data)
  # Access the first element of the list
print(list_data[1])
  # Access the third element of the list
print(list_data[3])
  # Give names to the elements in the list
names(list_data) <- c("1st Quarter", "A_Martix", "A Inner List")
names(list_data)
  # Add element at some position in the list
list_data[4] <- "New Element"
print(list_data[4])
  # Remove the element
list_data[4] <- NULL
print(list_data[4])
  # Print the 4th element
print(list_data[4]) # since 4th element is removed from the list, the 5th value will be printed as the 4th element
  # Update the 3rd element
list_data[3] <- "updated element"
print(list_data[3])

#___________________ MATRICES ___________________________________
# Matrices in R are objects in which elements are arranged in 2-D rectangular format
# Matrix can only have homogeneous (values inside matrix will be of same data type) element type
# Matrix can be created using matrix() function
#   2 4 6
#   4 5 6
#   6 7 8
# Basic Syntax of Matrix is: 
# matrix(data, nrow, ncol, byrow, dimnames)
# where, nrow - used to represent no. of rows
#        ncol - used to represent no. of columns
#        byrow - it is a boolean value (TRUE/FALSE decides whether the values are to be assigned by rows/columns)
#        dimnames - gives the dimension names e.g. 2 dimensions

  # Creating a matrix p
p <- matrix (c(3:14), nrow=4, byrow=TRUE) # row=true so values are assigned by rows. Make it False to assign values by columns
print(p)
  # Access the element at 3rd column and 1st row
print(p[1,3])
  # Access the element at 2nd column and 4th row
print(p[4,2])
  # Creating a matrix q
q <- matrix (c(14:25), nrow=4, byrow=TRUE)
print(q)
  # Mathematical Operations on Matrix
print(p + q)
print(p - q)
print(p * q)
print(p / q)

#___________________ FACTORS ____________________________________
# R factors store data in levels
# They are useful when there are lots of repeating values
# They are useful in data analysis for statistical analysis
# Factors are created using factors() functions
# Syntax: factor(data)

 # Creating a vector with the following values
data <- c("East", "West", "East", "North", "North", "East", "West", "West", "West", "East", "North")
data
 
 # Applying the factor function
factor_data <- factor(data)
print(factor_data)

  # Generating factor levels
# gl is the factor generating function
# 3 is an integer giving the number of levels (i.e. abc, def, asc)
# 4 is an integer giving the number of replications/repetition (i.e. repeat each level 4 times)
v <- gl(3,4,labels = c("abc", "def", "asc"))
print(v)

#___________________ DATA FRAMES ________________________________
# R Data Frames are table like structures
# Each column contains values of each variable
# Each row contains one set of values related to each column
# The column names are non-empty
# Row names should be unique.
# Syntax: var Name <- data.frame(Values)

employee.data <- data.frame(
  employee.id = c(1:4),
  employee_name = c("malika","hafiza","wajeed","pasha"),
  salary = c(63003, 51502, 61002, 44440),
  stringsAsFactors = FALSE
)
print(employee.date)

  # Get structure of data
str(employee.data)
  # Summary of data
summary(employee.data)
  # Adding column
employee.data$department <- c("Software", "Network", "Mobile", "Web")
print(employee.data)

#___________________ PACKAGES ___________________________________
# R packages are a collection of functions and Sample Data
# By default R has some packages that are installed along with R
# There are some functions in R that are helpful with packages:
# 1) library() : gives a list of all available Packages
# 2) install.packages() : to install a new package manually
# 3) Library("PackageName", lib.loc="Path of lib"): to load a package to library

  # Get library locations that contain R packages
.libPaths()
  # Get the list of all the packages installed
library()
  # Get all packages currently loaded in the R environment
search()
  # Install new packages called XML
install.packages("XML")  # internet needed
  # Load the package named "XML"
library("XML")

#___________________ DATA RESHAPING _____________________________
# Data reshaping means changing how data is represented in rows and columns
# Most of Data Processing in R is done on Data Frames
# R has many functions that deal with Reshaping of Data:
# by splitting, merging or interchanging the Rows and Columns
# Some data reshaping functions are:
# 1) cbind()
# 2) rbind()
# 3) merge(), etc.
  
  # Creating vector objects
city <- c("mumbai","delhi","bangalore","chennai")
city
zipcode <- c(345827, 875334, 229284, 782023)
zipcode
  # Combine above vectors into one data frame
oldAddresses <- cbind(city , zipcode)
  # Print a header
print(oldAddresses)
  
  # Create another data frame with similar columns
newAddresses <- data.frame(
  city = c("punjab", "hyderabad"),
  zipcode = c(928363, 537635)
)
  # Print the data frame
print(newAddresses)

  # Combine rows from both the data frames
totalAddresses <- rbind(oldAddresses , newAddresses)
print(totalAddresses)

#___________________ OPENING FILES ______________________________
# R supports reading file outside the R Directory/ Environment
# R can read and write in various file formats like CSV, XML, JSON, etc
# To read a CSV file use: read.csv("filename") 
# To write a CSV file use: write.csv(value,"filename.csv")
# Similarly we have packages, libraries and functions for other file formats

  # Opening a CSV file
data1 <- read.csv("Indian_Cities_Dataset.csv")
print(data1)
  # Some values have been skipped (since max value reached)
  # Checking whether its a data frame or not
print(is.data.frame(data1)) # If its a data frame, it will return TRUE or else FALSE
  # Checking the no. of columns in data1
print(ncol(data1))
  # Checking the number of rows in data1
print(nrow(data1))
  # Checking the maximum value of dist_code
print(max(data1$dist_code)) # column name
  # To get all the data related to the column dist_code
maxDetails <- subset(data1, dist_code == max(dist_code))
print(maxDetails)
  # Writing max(dist_code) values to a CSV file
write.csv(maxDetails, "R_Output.csv")
  # Reading the new max(dist_code) file
newdata <- read.csv("R_Output.csv")
print(newdata)

#___________________ WEB DATA ___________________________________
# R can make use of data provided on websites for public usage
# Using R we can extract the required data from these websites
# We need some packages like Rcurl, XML, stringr, etc.
# for handling Web Data and getting data from these websites
# We'll use functions to get the url of those files
# and then we'll save those files in the local storage for further operations

install.packages("RCurl")
library(RCurl)
  # storing the value received from the url in the variable named sample
sample <- read.table("http://www.ats.ucla.edu/stat/examples/ara/angell.txt") # link might have been revoked
print(sample)
sample1 <- read.table("Text_Extraction_WD_1TB_HardDrive.txt")
print(sample1)

#___________________ DATABASE ___________________________________
# Using R we can make connections to many relational database
# Steps to fetch data from a database
# 1) Creating connection with database
# 2) Sending Query to the tables
# 3) Fetching results

  # To fetch some data from R locally:

  # Connection
library(MySQL)
connectDB <- function(dbName, hostName, userName)
{
  sqlConnection <- NULL
  result = tryCatch({
    sqlConnection <- dbConnect (MySQL(), dbname=dbName, host=hostName, user=userName, password= .rs.askForPassword("Enter Password: "))
  },
  warning = function(w) {
    print("warnings")
    suppressWarnings()
  },
  error = function(e){
    print("Error" + e)
  },
  finally = 
    {
      print("connected")
    })
  return(sqlConnection)
}

  # Source
# Importing Connection File and libraries
library(RMySQL)
source("Connection.R")
# Creating Connection to database
con <- connectDB("ivvSchema", "localhost", "root")
# Creating Query
query <- dbSendQuery (con, "select * from CarData")
# Fetching Data
data <- fetch(query, n = -1)
# Disconnecting from database connection
dbDisconnect(con)
# Manipulating Data
CarData <- na.omit(data)
print(CarData)
print(input (" Cars Data set"))

#___________________ PLOTTING ___________________________________
# R is preferred for data analysis mainly because of its graphical capabilities 
# R has a great range of libraries to create graphs and charts
# Following are the graphs that can be plotted graphically using R
# 1) Pie Charts
# 2) Bar Charts
# 3) Box Plots
# 4) Histogram
# 5) Line Graphs
# 6) Scatter Plots

# 1) PIE CHARTS __________________________________________________
# A pie chart is basically a circle divided into sections to represent different portions
# Pie charts are created with a function:
#   pie(values, labels, main = "")

  # Pie Chart
slices <- c(10,12, 4, 16, 8)
lbls <- c("Apple", "Banana", "Grapes", "Blueberry", "Plum")
pie(slices, labels=lbls, main="Pie Chart of Fruits")

  # 3-D Pie Chart
install.packages("plotrix")
library(plotrix)
slices <- c(10, 12, 4, 16, 8)
lbls <- c("Apple", "Banana", "Grapes", "Blueberry", "Plum")
pie3D(slices, labels=lbls, explode=0.1, main="Pie Chart of Fruits") # explode is the distance between the slices

# 2) BAR CHARTS __________________________________________________
# A bar chart is a graphical representation in which numerical variables that are represented by vertical lines
# The lines are equal in width, but height is different
# Bar plots are created using bar function: 
#   barplot(vector/matrix, main = "", xlab = "")

counts <- table(mtcars$gear)
counts
barplot(counts, main="Car Distribution", xlab="Number of Gears")

# 3) BOX PLOTS ___________________________________________________
# A simple way of representing statistical data on a plot
# Rectangles are drawn to represent second and third quartile
# Vertical lines are used to represent medians
# The lower and upper quartiles are shown as horizontal lines
# Syntax: boxplot(x, data, main, xlab, ylab)

boxplot(mpg~cyl, data=mtcars, main="Car Milage Data", 
        xlab="Number of Cylinders", ylab="Miles Per Gallon")

# 4) HISTOGRAM ___________________________________________________
# A diagram consisting of rectangles
# The area is proportional to the frequency of a variable
# Syntax: hist(Data)
# To create a colored histogram with bins:
#   hist(Data, breaks, col)

hist(mtcars$mpg)
hist(mtcars$mpg, breaks = 9, col = "violet")

# 5) LINE GRAPHS ________________________________________________
# A line function is used to create information and add it to an existing graph
# A line function cannot create a graph on its own
# The function to create a line chart is: line(x , y, type)
# x, y - points which are to be connected to make a line
# type - specifies the type of line

x <- c(1:3)
y <- x  # create some data
par(pch=19, col="red") # plotting symbol and color 
par(mfrow = c(2,4)) # all plots on one page
ops = c("p", "l", "o", "b", "c", "s", "S", "h")
for (i in 1:length(ops))
{
  heading = paste("type=", ops[i])
  plot(x, y, type="n", main=heading)
  lines(x, y, type=ops[i])
}

# 6) SCATTER PLOTS ______________________________________________
# A scatter plot is used to plot data using points in different co-ordinates
# There are many ways to plot a scatter plots, simplest is:
#   plot(x,y)
# where, x and y are points

attach(mtcars)
plot(wt, mpg, main="Scatterplot Example", xlab="Car Weight",
     ylab="Miles Per Gallon", pch=19)

#___________________ MEAN, MEDIAN & MODE ________________________
# Statistical Analysis in R is performed using Mathematical/ Statistical functions either predefined or user defined
# Mean: Mean of a collection is the sum of collection divided by the number of elements in collection
# Mean is calculated using mean() function
# Median: It is the middle most value in a collection, it is calculated using median function
# Mode: Mode is the most repeated value in a data set. 
# There is no predefined function for calculating mode

x <- cars$speed # importing inbuilt data set
print(x)
  # Mean
mean(x)
  # Median
median(x)
  # Mode
#No predefined function available

#___________________ LINEAR REGRESSION __________________________
# Regression is a statistical tool used to find a relationship between two variables
# One variable is the predictor variable
# Another variable is the response variable
# In linear regression, these variables are related through a general equation:
# i.e. y = ax + b
# To find the linear regression, we use a function lm()
# Syntax: lm(formula, Data)
# Formula is the relationship between x and y
# Data is the set on which formula will be applied

  # The Predictor Vector
x <- c(5.1, 5.5, 5.8, 6.1, 6.4, 6.7, 6.4, 6.1, 5.10, 5.5)
  # The Response Vector
y <- c(63, 66, 69, 72, 75, 78, 75, 72, 69, 66)
  # Apply the lm() function
relation <- lm(y~x)
summary(relation)

  # Find weight of a person with height 170
a <- data.frame(x = 6.3)
result <- predict(relation, a)
print(result)
 # Find weight of a person with height 170
b <- data.frame(x = 5.5)
result <- predict(relation, b)
print(result)

# ____end____