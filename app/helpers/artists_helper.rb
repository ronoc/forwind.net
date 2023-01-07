module ArtistsHelper

  def artists_image_path
    result = "/images/artists/" + @artist.name + ".jpg"
  end

  def external_link_trimmer(link)
    r = link.split('.')
    v = r[r.length - 2]
    if v.match(/(com|co|org)/) && r.length != 3
      v = r[r.length - 3]
    end
    v.capitalize
  end

  def small_artists_image(image)
    elements = image.split('.')
    elements[0] = elements[0] + '_sm.'
    return elements.join('')
  end
end
