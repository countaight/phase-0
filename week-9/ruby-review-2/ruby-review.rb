# Create a Playlist from Driver Code

# I worked on this challenge [with: Noah Schutte, Oscar Delgadillo].
# I spent [#] hours on this challenge.

# Pseudocode
# Create a song class that accepts a song title and artist
  # Add ability to play song
    # LOOP a pause and print a hashtag a certain amount of times
  # Change the way a song is displayed normally to a nice formatted display
# Create a playlist class that accepts a list of songs
  # Add ability to add songs to existing playlists
  # Add ability to see the amount of songs in a playlist
  # Add ability to remove a song from an existing playlist
  # Add ability to check if a playlist includes a song
  # Add ability to play each song in the playlist
  # Add ability to display playlist information, nicely formatted

# Initial Solution
# class Song
#   def initialize(song_title, artist)
#     @song_title = song_title
#     @artist = artist
#   end
  
#   def play
#     puts @song_title
#     print "0:00 "
#     10.times do
#       sleep 0.1
#       print "#"
#     end
#     puts " 1:30"
#   end
  
#   def inspect
#     "#{@song_title} by #{@artist}"
#   end
    
# end

# class Playlist
#   def initialize(*songs)
#     @songs = songs
#   end
  
#   def add(*songs)
#     @songs.concat(songs)
#   end
  
#   def num_of_tracks
#     @songs.length
#   end
  
#   def remove(song)
#     if self.includes?(song)
#       @songs.delete(song)
#     end
#   end
  
#   def includes?(song)
#     @songs.include?(song)
#   end
  
#   def play_all
#     @songs.each do |song|
#       song.play
#     end
#   end
  
#   def display
#     puts "This playlist includes:"
#     @songs.each do |song|
#       puts "--#{song.inspect}--"
#     end
#   end
        
# end

# Refactored Solution

class Song
  def initialize(song_title, artist)
    @song_title = song_title
    @artist = artist
  end
  
  def play
    puts self.inspect
    print "0:00 "
    10.times do
      sleep 0.1
      print "#"
    end
    puts " 1:30"
  end
  
  def inspect
    "\"#{@song_title}\" by #{@artist}"
  end
    
end

class Playlist
  def initialize(*songs)
    @songs = songs
  end
  
  def add(*songs)
    @songs.concat(songs)
  end
  
  def num_of_tracks
    @songs.length
  end
  
  def remove(song)
    @songs.delete(song) if self.includes?(song)
  end
  
  def includes?(song)
    @songs.include?(song)
  end
  
  def play_all
    @songs.each { |song| song.play }
  end
  
  def display
    puts "This playlist includes:"
    @songs.each {|song| puts "--#{song.inspect}--"}
  end
        
end

# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display

# What concepts did you review in this challenge?
# The concept of composition, how to create multiple classes and assign them methods relevant to that class. For example, the song class creates songs and includes the ability to play the song. Meanwhile the playlist class can hold songs, but it's not in charge of knowing how the songs are named or played, it just simply knows that the songs exist and have a play feature.

# What is still confusing to you about Ruby?
# One confusion we did run into was when to use self and when to refer to an instance variable. I think we sorted it out, but it's definitely worth looking into.

# What are you going to study to get more prepared for Phase 1?
# I intend on studying more about Ruby blocks, methods, and lambdas to further increase my tool set for making code more DRY.