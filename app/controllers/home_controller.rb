class HomeController < ApplicationController
  layout 'home'
  before_filter :random_promo

  def random_promo
    rels = Release.find :all
    @small_releases = []
    chosen = ["FWD11", "FWD12", "FWD13", "FWD10", "FWD14"]
    rels.each do |rel|
      if rel.cat.in?(chosen)
        @small_releases << rel
      end
    end
    @small_releases.shuffle!
    rels = rels.sort_by{|x| x.release_date}.reverse!
    @recent = rels
    promo_index = 0

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

