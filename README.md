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
          
  ![WordCloud](https://user-images.githubusercontent.com/116072374/218510708-360e99c2-3bc8-401e-8fa2-8fddb9f65f5e.jpeg)

## Frequency Plot
##creating a Frequency bar plot
barplot(d[1:20,]$freq, las = 2, names.arg = d[1:20,]$word,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
        
  
![Freq](https://user-images.githubusercontent.com/116072374/218509672-9447679e-e289-483b-a1e2-ebca6362c886.jpeg)

## Feedback
 If you have any feedback, You can provide feedback on a GitHub repository.

Issues: You can file an issue on the repository if you have a bug to report, a feature request, or any other feedback that you would like to share with the repository maintainers. Issues can be used for discussions, questions, and bug reports.

Pull Requests: If you have a change that you would like to contribute to the repository, you can create a pull request.

Commit changes: You can also make changes  on specific lines of code or on pull requests if you have specific feedback on a particular aspect of the repository.



    
