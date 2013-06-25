require 'gibbon'

class HomeController < ApplicationController
  layout 'home'
  before_filter :random_promo

  def random_promo
    rels = Release.find :all
    rels = rels.sort_by{|x| x.release_date}.reverse!
    @recent = rels
    promo_index = 0
    @small_releases = []
    (0...5).each do |x|
      @small_releases << rels[x] unless rels[x].available == false
    end
    @promo_release = rels[promo_index]
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

  def subscribe
  	email_address = params['email']
    if /^([^@\s'"]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i.match(email_address)
      gb = Gibbon.new("04eb5415991d0463f76a8b0d6d4c7048-us4")
      begin
        gb.list_subscribe(:id => "ed662591d5", :email_address => email_address)     
        flash[:notice] = "Confirmation email in the post..."
      rescue
        flash[:error] = 'Looks like you have already subscribed to our mailing list !'
      end
    else
  	  flash[:error] = "Oops that email address did not validate ?"
  	end	
  	redirect_to :action => "index"	
  end	
end

