module HomeHelper
  def blog_formatting(body)
  end

  def banner
    bannerLink = $redis.get("bannerLink")
    bannerImage = File.join(@s3_images, "index", $redis.get("bannerImage"))
    <<~HEREDOC
      <h2 class="heading heading--floating-button">
        <a href="#{bannerLink}">Release</a>
      </h2>
      <figure>
        <a href="#{bannerLink}"><img alt="" src="#{bannerImage}"></a>
      </figure>
    HEREDOC
  end
end
