# Install
install.packages("tm")  # for text mining
install.packages("SnowballC") # for text stemming
install.packages("wordcloud") # word-cloud generator 
install.packages("RColorBrewer") # color palettes

# Load
library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")
library("dplyr")

text <- readLines(file.choose())

#viewing a the first line in the dataset
text[[1]][1]

#alternative way to read a file 
#filePath <- " #Directory path and filename with extension "
#text <- readLines(filePath)

View(text)
docs <- Corpus(VectorSource(text))
inspect(docs)
toSpace <- content_transformer(function (x , pattern ) gsub(pattern, " ", x))
docs <- tm_map(docs, toSpace, "/")
docs <- tm_map(docs, toSpace, "@")
docs <- tm_map(docs, toSpace, "\\|")
docs[[1]][1]

# Converting the text to lower case
docs <- tm_map(docs, content_transformer(tolower))

# Removing numbers
docs <- tm_map(docs, removeNumbers)

# Removing english common stopwords
docs <- tm_map(docs, removeWords, stopwords("english"))

# Removing our own stop word
# specify the stopwords as a character vector
docs <- tm_map(docs, removeWords, c("blabla1", "blabla2")) 

# Removing punctuations
docs <- tm_map(docs, removePunctuation)

# Eliminating extra white spaces
docs <- tm_map(docs, stripWhitespace)

# Text stemming
# docs <- tm_map(docs, stemDocument)

#creating a Term Document Matrix
dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
head(d, 10)

set.seed(1234)

wordcloud(words = d$word, freq = d$freq, min.freq = 1,scale=c(4,0.5),
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))

#creating a Frequency bar plot
barplot(d[1:20,]$freq, las = 2, names.arg = d[1:20,]$word,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
