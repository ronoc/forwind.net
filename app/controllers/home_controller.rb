class HomeController < ApplicationController
  layout 'home'
  before_filter :random_promo

  def random_promo
    featured = $redis.lrange("featuredReleases", 0, $redis.llen("releases")-1)
    @small_releases = Release.all(:conditions => ["cat IN (?)", featured])
                             .shuffle
    pds = Podcast.pluck(:id)
    @podcast = Podcast.find(pds.sample)
    @blogs = BlogPost.all(:limit => 6, :conditions => ["published_at IS NOT NULL"], :order => "published_at")
                     .reject{|b| b.tags.include?("podcasts")}
                     .first(3)
  end
end

