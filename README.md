# Stocktwits

This is a Ruby wrapper for the unpublished Stocktwits API.  Right now, it only unofficially supports the streams page.

## Installation

As a plugin (in your Rails directory):

    script/plugin install git://github.com/phuphighter/stocktwits.git
    
## Usage

### Instantiate a client

    >> stocktwits = Stocktwits::Client.new
    
#### Examples

    >> tweet = stocktwits.streams.stream.tweets.first
    => <#Hashie::Mash avatar_url="http://a2.twimg.com/profile_images/1100714662/the_orb2_normal.png" source="web" status_id=22012598749 stocks=["WMS", "IGT"] tweet_datetime="Tue Aug 24 16:14:05 +0000 2010" tweet_text="Q2 Shipments - as expected, $WMS took the lead over $IGT and Konami normalized.  $$" twitter_user_id=18719020 twitter_username="Hedgeye">

    >> tweet.tweet_text
    => "Q2 Shipments - as expected, $WMS took the lead over $IGT and Konami normalized.  $$"
    
## Copyright

Contact me if you have any suggestions and feel free to fork it!

Copyright (c) 2009 Johnny Khai Nguyen, released under the MIT license
