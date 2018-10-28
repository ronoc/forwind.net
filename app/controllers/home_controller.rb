class HomeController < ApplicationController
  layout 'base'
  before_action :random_promo
  
  def random_promo
    featuredReleases = $redis.lrange("featuredReleases", 0, $redis.llen("releases")-1)
    featuredArtists  = $redis.lrange("featuredArtists", 0, $redis.llen("artists")-1)
    @small_releases  = Release.where("cat IN (?)", featuredReleases)
                              .order('random()').to_a.slice(0,3)                          
    @small_artists   = Artist.where("name IN (?)", featuredArtists)
                             .order('random()').to_a.slice(0,3)
    pds = Podcast.pluck(:id)
    @podcast = Podcast.find(pds.sample)
    @context = ""
    @news = News.where("published = true").order("date").last(2);
  end
end

