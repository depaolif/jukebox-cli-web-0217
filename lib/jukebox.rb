songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
	puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
	songs.each_with_index do |el,ind|
		puts "#{ind + 1}. #{el}"
	end
end

def play(songs)
	puts "Please enter a song name or number:"
	input = gets.chomp
	case input
	when "1", songs[0]
		puts "Playing #{songs[0]}"
	when "2", songs[1]
		puts "Playing #{songs[1]}"
	when "3", songs[2]
		puts "Playing #{songs[2]}"
	when "4", songs[3]
		puts "Playing #{songs[3]}"
	when "5", songs[4]
		puts "Playing #{songs[4]}"
	when "6", songs[5]
		puts "Playing #{songs[5]}"
	when "7", songs[6]
		puts "Playing #{songs[6]}"
	when "8", songs[7]
		puts "Playing #{songs[7]}"
	when "9", songs[8]
		puts "Playing #{songs[8]}"
	else 
		puts "Invalid input, please try again"
	end
end

def exit_jukebox
	puts "Goodbye"
end

def run(songs)
	help
	loop do 
		puts "Please enter a command:"
		com = gets.chomp
		case com
		when "help"
			help
		when "list"
			list(songs)
		when "play"
			play(songs)
		when "exit"
			exit_jukebox
			break
		end
	end
end