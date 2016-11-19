class HomeController < ApplicationController
  layout 'home'
  before_filter :random_promo

  def random_promo
    featured = $redis.lrange("featuredReleases", 0, $redis.llen("releases")-1)
    @small_releases = Release.all(:conditions => ["cat IN (?)", featured])
    @small_releases.shuffle!
    @podcast = Podcast.last
    bs = BlogPost.find :all

    @blogs = []
    titles = []

    bs.each do |x|
      unless (x.tags.include?("podcasts"))
        unless (x.published == false)
          unless(titles.include?(x.title))
            @blogs << x
            titles << x.title
          end
        end
      end
      if @blogs.length > 2
        break
      end
    end
  end
end

