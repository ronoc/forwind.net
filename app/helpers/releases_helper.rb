module ReleasesHelper

  # TODO: Sort by track no!
  def cjc_form
    Album.find(:first)
    #AudioAsset.find(:all, :conditions => ['artist_id = ? AND album_id = ?', 1, 1 ])
  end

  def tracklist_offset(release)
    if release.cat == 'FWD02'
      0
    elsif release.cat == 'FWD03'
      0
    elsif release.cat == 'FWD04'
      0
    elsif release.cat == 'FWD00'
      0
    end
  end

  def tracklist_height(release)
    if release.cat == 'FWD02'
      95
    elsif release.cat == 'FWD03'
      80
    elsif release.cat == 'FWD04'
      240
    elsif release.cat == 'FWD00'
      240
    end

  end

  def small_releases_image(release)
    release.cat.downcase + '_sm.png'  
  end

  def cjc
    Artist.find(:first)
  end

  def title_formatted(title)
      words = title.split(" ")
      words.join("  |  ")
  end

  def active_piece_link?(piece)
    params[:id].to_i != piece.id
  end

  def active_rel_link?(rel)
    release = Release.find_by_cat(params[:id])
    if release.nil?
      return true
    end
    release.title != rel.title
  end

  def street_thunder
    AudioAsset.find(:all, :conditions => ['artist_id = ?', 2 ])[0]
  end

   def vimeo_embed(id, width=725, height=(width*9/16))
    <<-TAG
    <object width="#{width}" height="#{height}" style="background-color:#000000">
      <param name="allowfullscreen" value="true" />
      <param name="allowscriptaccess" value="always" />
      <param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=#{id}&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=&amp;fullscreen=1" />
      <embed src="http://vimeo.com/moogaloop.swf?clip_id=#{id}&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=&amp;fullscreen=1" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="#{width}" height="#{height}"/></object>
    TAG
  end
end

