class SongList
	MAX_TIME = 5*60
	def initialize
		@songs = Array.new
		@index = WordIndex.new
	end

	def append(song)
		@songs.push(song)
		@index.add_to_index(song, song.name, song.artist)
		self
	end

	def delete_first	##needs to be modded to remove from index
		@songs.shift
	end

	def delete_last
		@songs.pop
	end

	def [](index)		# strange symbol
		@songs[index]
	end

	def SongList.is_to_long(song)
		return song.duration > MAX_TIME
	end

	def with_title(title)
		@songs.find {|song| title == song.name}
	end

	def lookup(word)
		@index.lookup(word)
	end
end

class Song
	attr_reader :name, :artist, :duration
	attr_writer :duration
	@@plays = 0
	def initialize(name, artist, duration)
		@name = name
		@artist = artist
		@duration = duration
		@plays = 0
	end

	def to_s
		"Song: #{@name}--#{@artist} (#{@duration})"
	end

	def duration_in_minutes
		@duration/60.0
	end
	def duration_in_minutes=(new_duration)
		@duration = (new_duration*60).to_i
	end

	def play
		@plays += 1
		@@plays += 1
		puts "This song: #{@plays} plays.  Total #{@@plays} plays."
	end

	def mixed_case(name)
		name.gsub(/\b\w/) {|first| first.upcase}
	end
end

class MyLogger
	private_class_method :new
	@@logger = nil
	def MyLogger.create
		@@logger = new unless @@logger
		@@logger
	end
end



class KaraokeSong < Song
	def initialize(name, artist, duration, lyrics)
		super(name, artist, duration)
		@lyrics = lyrics
	end

	def to_s
		super + " [#{@lyrics}]"
	end
end

class WordIndex
	def initialize
		@index = {}
	end
	def add_to_index(obj, *phrases)
		phrases.each do |phrase|
			phrase.scan(/\w[-\w']+/) do |word| #extract each word
				word.downcase!
				@index[word] = [] if @index[word].nil?
				@index[word].push(obj)
			end
		end
	end
	def lookup(word)
		@index[word.downcase]
	end
end

class VU
	include Comparable
	attr_reader :volume
	def initialize(volume)	#0..9
		@volume = volume
	end
	def inspect
		'#'*@volume
	end
	#support for ranges
	def <=>(other)
		self.volume <=> other.volume
	end
	def succ
		raise(IndexError, "Volume too big") if @volume >= 9
		VU.new(@volume.succ)
	end
end


##read song data (not in a class)
File.open("songdata") do | song_file|
	songs = SongList.new
	song_file.each do |line|
		file, length, name, title = line.chomp.split(/\s*\|\s*/)
		name.squeeze!(" ")
		mins, secs = length.scan(/\d+/)
		songs.append(Song.new(title, name, mins.to_i*60+secs.to_i))
	end
	puts songs[1]
	puts songs.lookup("Fats")
	puts songs.lookup("ain't")
	puts songs.lookup("RED")
	puts songs.lookup("WoRlD")
end



##test volume
medium_volume = VU.new(4)..VU.new(7)
p medium_volume.to_a
puts medium_volume.include?(VU.new(3))


# song1 = Song.new("Bicyclops","Fleck",260)
# puts song1.to_s
# puts song1.name
# puts song1.artist
# puts song1.duration
# puts song1.duration_in_minutes
# song1.duration_in_minutes = 4.2
# puts song1.duration

# song2 = KaraokeSong.new("My Way","Sinatra",225, "And now, the ...")
# puts song2.to_s
# puts song2.name
# puts song2.artist
# puts song2.duration

# song3 = Song.new("The Calling", "Santana", 468)

# song1.play
# song2.play
# song1.play
# song1.play

# puts SongList.is_to_long(song1)
# puts SongList.is_to_long(song2)
# puts SongList.is_to_long(song3)



# require 'test/unit'
# class TestSongList < Test::Unit::TestCase
# 	def test_delete
# 		list = SongList.new
# 		s1 = Song.new('title1','artist1',1)
# 		s2 = Song.new('title2','artist2',2)
# 		s3 = Song.new('title3','artist3',3)
# 		s4 = Song.new('title4','artist4',4)
# 		list.append(s1).append(s2).append(s3).append(s4)
# 		assert_equal(s1, list[0])
# 		assert_equal(s3, list[2])
# 		assert_nil(list[9])
# 		assert_equal(s1, list.delete_first)
# 		assert_equal(s2, list.delete_first)
# 		assert_equal(s4, list.delete_last)
# 		assert_equal(s3, list.delete_last)
# 		assert_nil(list.delete_last)
# 	end
# end

