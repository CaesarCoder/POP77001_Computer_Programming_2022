options(jupyter.rich_display = FALSE)


# E1
l <- list(
    mapply(assign, letters, 1:26),
    A = array(1:60, c(5,2,3)),
    M = matrix(1:50, c(10,5))
)

l

# Exercise 1:

# Your code goes here

## All consonants from the first character vector
LETTERS <- l[[1]]
str(LETTERS)
CONSONANTS <- LETTERS[c("b", "c", "d", "f", "g", "h", "j", "k",
                        "l", "m", "n", "p", "q", "r", "s", 
                        "t", "v", "w", "x", "y", "z")]
CONSONANTS

str(CONSONANTS) ## 21 character vectors

## Second columns in all dimensions from the array A
SDA <- l$A[, 2, ]

SDA


#  Odd rows from the matrix M

MC1 <- l$M
MC1

MROWS_ODD <- seq_len(nrow(MC1)) %% 2   

MROWS_ODD

MC1_ODDROWS <- MC1[MROWS_ODD == 1, ]    
MC1_ODDROWS # Odd rows from the Matrix M

# E2

set.seed(2022)
vec <- sample(c("1", "0", "o"), size = 100, replace = TRUE)

# Exercise 2:

# Your code goes here
vec
typeof(vec)   # it is character vector 
vec_nu<- as.numeric(vec)
str(vec)
CO <- which(vec == "o")  # "o"
str(CO) # there are 40 "o" in total, 40%
ifelse()
vec_NEW <- ifelse(vec == "o",0, vec)
vec_NEW





## Answer: its type is character vector
# what proportion of the vector elements did we fail to convert correctly? 40%






 
books <- c(
  "Dubliners",
  "Ulysses",
  "War and Peace",
  "Normal People",
  "Crime and Punishment",
  "The Picture of Dorian Gray"
)

# Exercise 3:

# Your code goes here

NCB <- nchar(books)
NCB # 9 7 13 13 20 26

NCBOT <- mean(NCB > 10)*100
NCBOT
# the percentage of book titles in the vector below that have more than 10 
# characters in them: 66.67%

# E4
set.seed(2022)
educ <- rpois(1000, 2)
educ <- ifelse(educ > 4, 4, educ)

# Exercise 4:

# Your code goes here

educ_FC <- as.factor(educ)
educ_FC
tab_edu <- table(educ_FC) 
tab_edu # 0, 140; 1, 247; 2, 267; 3, 181; 4, 138. Secondary 
# education coded as 2 is the most frequent 
edu_REORDER <- factor(tab_edu, levels = c("Secondary Education", 
                                         "No formal education", 
                                         "Primary Education",
                                         "College", 
                                         "Post-graduate Education"))
edu_REORDER


# E5
char_1 <- unlist(strsplit("kitten", split = ""))
char_2 <- unlist(strsplit("sitting", split = ""))

char_1

char_2

# Exercise 5:

# Your code goes here

length(char_1) # 6

length(char_2) # 7

char_1_mod <- append(char_1, "0") # add "0" at the end, same length of char_1 
# and char_2
num_tra <- 0
num_tra  <- ifelse(char_2 == char_1_mod, num_tra, num_tra +1)
sum(num_tra) # 3
# answer: 

