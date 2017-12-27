class HomeController < ApplicationController
  layout 'home'
  before_action :random_promo

  def random_promo
    featured = $redis.lrange("featuredReleases", 0, $redis.llen("releases")-1)
    @small_releases = Release.where("cat IN (?)", featured)
                             .order('random()').to_a                             
    puts "small releases " + @small_releases.to_s
    pds = Podcast.pluck(:id)
    @podcast = Podcast.find(pds.sample)
    @context = ""
    #@blogs = BlogPost.all(:limit => 6, :conditions => ["published_at IS NOT NULL"], :order => "published_at")
    #                 .reject{|b| b.tags.include?("podcasts")}
    #                 .first(3)x
  end
end

