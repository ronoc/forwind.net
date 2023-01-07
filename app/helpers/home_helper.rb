module HomeHelper

  def banner
    banner_link = $redis.get("banner_link")
    banner_image = File.join(@s3_images_new, "banners", $redis.get("banner_image"))
    <<~HEREDOC
      <figure>
        <a href="#{banner_link}"><img alt="" src="#{banner_image}"></a>
      </figure>
    HEREDOC
  end

  def unfurl_twitter_urls(url)

  end

  def about_1
    return $redis.get("about_1")
  end

  def about_2
    return $redis.get("about_2")
  end

end
