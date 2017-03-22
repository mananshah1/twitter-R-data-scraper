library(twitteR)
library(ROAuth)
library(httr)

# Set API Keys
api_key <- "BBzrGIvtm8Roh5hZUUEeaE97X"
api_secret <- "2ATtfVz5hptTXJMeBciZ13W7Vo4Wjt6dSlkZoQgLsjgNPAa0sh"
access_token <- "776987256208756736-lbweNhSjJVH2N7wTHl9BEUCa0xo1fg6"
access_token_secret <- "6uKvkgKpgBqqXwjFoMzAbEhtJrBVjMh11WILm5XIBTtxh"
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)




# Grab latest tweets
tweets_sanders <- searchTwitter('@BernieSanders', n=1500)

library(plyr)
feed_sanders = laply(tweets_sanders, function(t) t$getText())

sanders <- as.data.frame(feed_sanders, stringsAsFactors = FALSE)