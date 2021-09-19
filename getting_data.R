library(tidyverse)
library(tm)
library(quanteda)
library(tidytext)
library(readtext)

library(quanteda.textstats)
library(quanteda.textplots)

todl <- 'https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip'
filename <- 'Coursera-SwiftKey.zip'
download.file(todl, filename)
unzip(filename)


twitter_en <- readLines('final/en_US/en_US.twitter.txt')
blogs_en <- readLines('final/en_US/en_US.blogs.txt')
news_en <- readLines('final/en_US/en_US.news.txt')

?grep

grep('[fF][Uu][Cc][Kk]',twitter_en)

twitter_en[70850]

twitter_en[grep('[fF][Uu][Cc][Kk]',twitter_en)]

ls()
setwd(main_directory)
main_directory <- getwd()
getwd()

ls()
file('fil')

nchar(twitter_en[1])

nchar(twitter_en[1484357])
nchar(blogs_en[483415])
nchar(news_en[14556])

which.max(nchar(twitter_en))
which.max(nchar(blogs_en))
which.max(nchar(news_en))

love <- grep('love', twitter_en)
hate <- grep('hate', twitter_en)

twitter_en[grep("A computer once beat me at chess, but it was no match for me at kickboxing", twitter_en)]
twitter_en[grep('3-grams', twitter_en)]

grep('2-grams', news_en)
gc()


?readtext

twitter_en
?readLines

?corpus
twitter <- corpus(twitter_en)
head(twitter)

test <- twitter_en %>%
  unnest_tokens(word,text)

twitter_en <- twitter_en %>%
  iconv('UTF-8','ASCII', sub = '') %>%
  tolower %>%
  removePunctuation %>%
  removeNumbers %>%
  stripWhitespace

twitter_en

head(twitter)
twitter


twitter <- iconv(twitter,'UTF-8','ASCII', sub = '')

?iconv
?grep

twitter <- corpus(twitter_en)
summary(twitter)

tok_twitter <- tokens(twitter)
head(tok_twitter)
print(tok_twitter)
dfm_twitter <- dfm(tok_twitter)

twitter_freq <- textstat_frequency(dfm_twitter, n = 20)

?textstat_frequency
?stop_words
data("stop_words")
