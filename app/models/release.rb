class Release < ActiveRecord::Base
  has_many :pieces
  belongs_to :artist
  has_many :release_links

  def last_three
    Release.find(:all).sort_by
  end
  
  def sort_links
    @links = {RELEASE_LINK_TYPES[:PHYSICAL] => [],
              RELEASE_LINK_TYPES[:DOWNLOAD] => [],
              RELEASE_LINK_TYPES[:STREAM] => [],
              RELEASE_LINK_TYPES[:REVIEW] => []}
    release_links.each do |link|
      unless RELEASE_LINK_TYPES.has_value?(link.link_type)
        next
      end
      @links[link.link_type] << link
    end
  end  

  def streams
    if @links.nil?
      sort_links
    end
    return @links[RELEASE_LINK_TYPES[:STREAM]]
  end

  def physicals
    if @links.nil?
      sort_links
    end
    return @links[RELEASE_LINK_TYPES[:PHYSICAL]]
  end

  def downloads
    if @links.nil?
      sort_links
    end
    return @links[RELEASE_LINK_TYPES[:DOWNLOAD]]
  end

  def reviews
    if @links.nil?
      sort_links
    end
    return @links[RELEASE_LINK_TYPES[:REVIEW]]
  end

end

