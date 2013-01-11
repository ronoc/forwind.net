module ArtistsHelper

  def artists_image_path
    result = "/images/artists/" + @artist.name + ".jpg"
  end

  def external_link_trimmer(link)
    r = link.split('www.')[1]
    slashes = r.split('/')
    if slashes[0] == 'soundcloud.com' or slashes[0] == 'myspace.com'
      return slashes[0] + '/' + slashes[1]
    elsif slashes[0] == 'last.fm'
      return slashes[0] + '/' + slashes[1] + '/' + slashes[2]
    else
      return slashes[0]
    end
  end
  def small_artists_image(image)
    elements = image.split('.')
    elements[0] = elements[0] + '_sm.'
    return elements.join('')
  end
end
