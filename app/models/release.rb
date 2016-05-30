class Release < ActiveRecord::Base
  has_many :pieces
  has_and_belongs_to_many :artists
  has_many :release_links

  def last_three
    Release.find(:all).sort_by
  end

  def sort_links
    @links = {ReleaseLink.types[:PHYSICAL] => [],
              ReleaseLink.types[:DOWNLOAD] => [],
              ReleaseLink.types[:STREAM] => [],
              ReleaseLink.types[:REVIEW] => [],
              ReleaseLink.types[:DISCOGS] => []}
    release_links.each do |link|
      unless ReleaseLink.types.has_value?(link.link_type)
        next
      end
      @links[link.link_type] << link
    end
  end

  def streams
    if @links.nil?
      sort_links
    end
    return @links[ReleaseLink.types[:STREAM]]
  end

  def discogs
    if @links.nil?
      sort_links
    end
    return @links[ReleaseLink.types[:DISCOGS]]
  end

  def physicals
    if @links.nil?
      sort_links
    end
    return @links[ReleaseLink.types[:PHYSICAL]]
  end

  def downloads
    if @links.nil?
      sort_links
    end
    return @links[ReleaseLink.types[:DOWNLOAD]]
  end

  def reviews
    if @links.nil?
      sort_links
    end
    return @links[ReleaseLink.types[:REVIEW]]
  end

end

