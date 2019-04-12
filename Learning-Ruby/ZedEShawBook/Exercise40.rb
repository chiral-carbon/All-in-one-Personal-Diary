class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line }
  end
end

#happy_bday = Song.new(["Happy birthday to you",
           #"I don't want to get sued",
           #{}"So I'll stop right there"])

#bulls_on_parade = Song.new(["They rally around tha family",
            #{}"With pockets full of shells"])



#Study DRill

song1_lyrics=["Happy birthday to you", "I don't want to get sued", "So I'll stop right there"]
song2_lyrics=["They rally around tha family", "With pockets full of shells"]

happy_bday=Song.new(song1_lyrics)
bulls_on_parade=Song.new(song2_lyrics)


happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()
