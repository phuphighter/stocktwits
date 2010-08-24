require 'test_helper'

class StocktwitsTest < Test::Unit::TestCase

  context "Stocktwits API" do
    setup do
      @client = Stocktwits::Client.new
    end
    
    context "and get streams" do
      should "retrieve the all updates from stream" do
        stub_get("http://stocktwits.com/streams/all.json", "all.json")
        stream_results = @client.streams
        stream_results.stream.tweets.first.twitter_username.should == "djomegact"
        stream_results.stream.tweets.last.tweet_text.should == "Soybeans Future $ZS_F at new session High  $s_f $$ #soybeans 11:56:17.843"
      end
    end
    
  end

end