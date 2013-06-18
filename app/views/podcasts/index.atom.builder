
atom_feed do |feed|
  feed.title("Forwind Podcasts")
  feed.updated(@podcasts.first.created_at) if @podcasts.first
  feed.disclaimer("We really hope you enjoy the work on these podcasts. They are intended to promote the individual artists as well as take you on a bit of an audio expedition to the murky edges of the experimental and electronic netherworlds! So if anything really grabs you please try and track down the original releases and help support the artists. Happy listening =)")
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
