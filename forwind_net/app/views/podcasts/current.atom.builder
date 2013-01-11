
atom_feed do |feed|
  feed.title("Forwind Podcasts")
  feed.updated(@podcasts.first.created_at) if @podcasts.first
  
  @podcasts.each do |podcast|
    feed.entry(podcast) do |entry|
      entry.link(:rel => 'enclosure',
                 :type => 'audio/mpeg',
                 :title => 'MP3',
                 :href => "http://www.forwind.net/audio" + podcast.file_name + ".mp3",
                 :length => 2400)
      entry.content(podcast_content(podcast), :type=> 'html')
      entry.title(podcast.title, :type => 'html')
      entry.author { |author| author.name(podcast.artist.name) }
    end
  end
end
