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
end
