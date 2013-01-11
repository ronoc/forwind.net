
atom_feed do |feed|
  feed.title("Forwindings")
  feed.updated(@blog_posts.first.created_at) if @blog_posts.first
  
  @blog_posts.each do |post|
    feed.entry(post) do |entry|
      entry.title(post.title)
      entry.content(post.parsed_body, :type => 'html')
      entry.author { |author| author.name(post.user_name(true)) }
    end
  end
end
