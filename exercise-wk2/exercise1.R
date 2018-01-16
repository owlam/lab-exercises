## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# This does not work because you can't add integers to a string

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# The stringr package was not loaded

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# the variable it is trying to use is "initials" not "initial


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
my.vector <- c("Owla", "Mohamed", "Likes", "Cake")
typeof(my.vector)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector1, vector2){
  N<- length(vector2)-length(vector1)
  paste("The difference in lengths is", N )
}

# Pass two vectors of different length to your `CompareLength` function
vector.a<- c(1,2,3)
vector.b <- c(4,5,6,7,8,9)
CompareLength(vector.a, vector.b)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector1, vector2) {
  N1= vector2- vector1
  N2= vector1-vector2
  if (vector2 > vector1) { text <-(paste("Your first vector is longer by", N1, "elements") )
} else { 
  text<- (paste ("Your second vector is longer by", N2, "elements"))}
return (text)}
# Pass two vectors to your `DescribeDifference` function
DescribeDifference (vector.a, vector.b)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVector <- function(v1,v2, v3){
  return (c(v1,v2,v3))
}
  
# Send 3 vectors to your function to test it.
CombineVector(1:15, c(1,2,4), c("a","b"))
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters


