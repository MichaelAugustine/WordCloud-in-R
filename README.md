# WordCloud-in-R

Overview

A word cloud project in R involves generating a word cloud from a text document or corpus to visualize the most frequently used words. "The purpose of a word cloud project in R is for text data analysis, sentiment analysis and topic modeling".

In a text data analysis project, a word cloud can be used to identify the most frequently used words in a document or corpus, which can provide insights into the overall content and theme of the text.

In a sentiment analysis project, a word cloud can be used to identify the words that are associated with positive or negative sentiments, which can provide insights into the opinions and emotions expressed in the text.

In a topic modeling project, a word cloud can be used to visualize the words that are most strongly associated with each topic, which can provide insights into the content and structure of the text.

Overall, word clouds are a valuable tool for text data analysis and can provide insights into the content and structure of text data. In R, the "wordcloud" library makes it easy to generate word clouds and provides a range of customization options for fine-tuning the word cloud to meet specific


##  Prerequisites
The Code is written in R version 4.2.2 . If you don't have R installed you can find it [here](https://support--rstudio-com.netlify.app/products/rstudio/download/). 
## Data Set
[kaggle.com](https://www.kaggle.com/) - [Twitter and Reddit Sentimental analysis Dataset]( https://www.kaggle.com/datasets/cosmos98/twitter-and-reddit-sentimental-analysis-dataset )
, [Medium articles dataset](https://www.kaggle.com/datasets/dorianlazar/medium-articles-dataset)

I have used 3 datasets in the program to create word Cloud.
The data Medium dataset contains information about randomly chosen medium articles published in 2019. 

The two datasets Twitter and Reddit Sentimental analysis Dataset Respectively one Consists of Tweets from Twitter with Sentimental Label and the other from Reddit which Consists of Comments with its Sentimental Label.

All these Tweets and Comments were extracted using there Respective Apis Tweepy and PRAW.

"These tweets and Comments Were Made on Narendra Modi and Other Leaders as well as Peoples Opinion Towards the Next Prime Minister of The Nation ( In Context with General Elections Held In India - 2019)." 

## Install Packages

install.packages("tm")  # for text mining

install.packages("SnowballC") # for text stemming

install.packages("wordcloud") # word-cloud generator 

install.packages("RColorBrewer") # color palettes




## WordCloud

wordcloud(words = d$word, freq = d$freq, min.freq = 1,scale=c(4,0.5),
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
          
   ![WordCloud](https://user-images.githubusercontent.com/116072374/218509295-bff7802b-f036-4ecc-9a7e-fb26fc9857b4.jpeg)

##creating a Frequency bar plot
barplot(d[1:20,]$freq, las = 2, names.arg = d[1:20,]$word,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
        
        ![Freq](https://user-images.githubusercontent.com/116072374/218508735-2f5a8af2-34ba-42e0-9bfd-0c3851ff6441.jpeg)


    
