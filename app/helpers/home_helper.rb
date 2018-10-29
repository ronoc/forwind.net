module HomeHelper

  def banner
    bannerLink = $redis.get("bannerLink")
    bannerImage = File.join(@s3_images, "index", $redis.get("bannerImage"))
    <<~HEREDOC
      <figure>
        <a href="#{bannerLink}"><img alt="" src="#{bannerImage}"></a>
      </figure>
    HEREDOC
  end
end
