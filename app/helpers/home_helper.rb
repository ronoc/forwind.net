module HomeHelper
  def blog_formatting(body)
  end

  def banner
    bannerLink = $redis.get("bannerLink")
    bannerImage = File.join(@s3_images, "index", $redis.get("bannerImage"))
    return "<a href=#{bannerLink}><img src=#{bannerImage}></a>"
  end
end
