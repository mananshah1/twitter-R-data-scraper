library(twitteR)
library(ROAuth)
library(httr)

# Set API Keys
api_key <- a
api_secret <-  b
access_token <- c
access_token_secret <-  d
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)




# Grab latest tweets
tweets_sanders <- searchTwitter('@BernieSanders', n=1500)

library(plyr)
feed_sanders = laply(tweets_sanders, function(t) t$getText())

sanders <- as.data.frame(feed_sanders, stringsAsFactors = FALSE)
