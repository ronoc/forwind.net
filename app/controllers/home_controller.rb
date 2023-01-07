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
      @news = []
      #Keep our local cache updated, just in case twitter goes down.
      Rails.cache.write("latest_news", @news.to_json)
    rescue
      cached_news = Rails.cache.fetch("latest_news")
      @news = JSON::parse(cached_news) unless cached_news.nil?
    rescue JSON::ParserError
      # just don't bring down the appserver, @news already should be set to empty array...
    end
  end
end
