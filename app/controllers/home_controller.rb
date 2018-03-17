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
    puts "small releases " + @small_releases.to_s
    pds = Podcast.pluck(:id)
    @podcast = Podcast.find(pds.sample)
    @context = ""
    #@blogs = BlogPost.all(:limit => 6, :conditions => ["published_at IS NOT NULL"], :order => "published_at")
    #                 .reject{|b| b.tags.include?("podcasts")}
    #                 .first(3)x
  end
end

