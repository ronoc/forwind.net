require 'json'

class HomeController < ApplicationController
  layout 'base'
  before_action :set_content
  
  def set_content
    featuredReleases = $redis.lrange("featuredReleases", 0, $redis.llen("releases")-1)
    featuredArtists  = $redis.lrange("featuredArtists", 0, $redis.llen("artists")-1)
    @small_releases  = Release.where("cat IN (?)", featuredReleases)
                              .order('random()').to_a.slice(0,3)                          
    @small_artists   = Artist.where("name IN (?)", featuredArtists)
                             .order('random()').to_a.slice(0,2)
    pds = Podcast.pluck(:id)
    @podcast = Podcast.find(pds.sample)
    @context = "music"

    begin
      ts = $twitter_client.user_timeline("forwindings", {:tweet_mode => 'extended'}).select{|t| t.retweet? == false && t.reply? == false}
      @tweets = ts.first(2)
      
      linkFinder = /http[s]\:\/\/(\w|\.|\/)+/
      @news = []
  
      @tweets.each do |t|
        links = []
        news_item = {}
        full_text = t.attrs[:full_text]
        news_item["created_at"] = t.created_at.strftime("%d %B '%y")
        news_item["text"] = full_text
        news_item["url"] = t.url.to_s
        full_text.scan(linkFinder) {|match| links << $~}
        
        if links.size > 0
          new_text = "#{full_text.slice(0, links[0].offset(0)[0])} <a href=#{links[0].to_s}>#{links[0].to_s}</a> #{full_text.slice(links[0].offset(0)[1], full_text.size)}"
          news_item["text"] = new_text
        end
        # Support just 2 links to be hyperlinked
        if links.size > 1
          # reset to new text, rescan to pick up new adjusted indexes into string          
          full_text = news_item["text"]
          links = []
          # add space to original regex to find the next link
          full_text.scan(/\shttp[s]\:\/\/(\w|\.|\/)+/) {|match| links << $~}
          new_text = "#{full_text.slice(0, links[0].offset(0)[0])} <a href=#{links[0].to_s}>#{links[0].to_s}</a> #{full_text.slice(links[0].offset(0)[1], full_text.size)}"
          news_item["text"] = new_text
        end
        @news << news_item
      end
      #Keep our local cache updated, just in case twitter goes down.
      Rails.cache.write("latest_news", @news.to_json)
    rescue
      cached_news = Rails.cache.fetch("latest_news")
      @news = JSON::parse(news) unless cached_news.nil?
    rescue JSON::ParserError
      # just don't bring down the appserver, @news already should be set to empty array...
    end
  end
end

