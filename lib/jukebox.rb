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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  index = 1
  songs.map do |song|
    puts "#{index.to_s}. #{song}"
    index += 1
  end 
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  index = 1
  songs.each do |song|
    if input == song
      puts "Playing #{song}"
    elsif input.to_i == index
      puts "Playing #{songs[index - 1]}"
    end 
    index += 1
  end
  if !songs.include?(input)
    puts "Invalid input, please try again"
  end
end 

def exit_jukebox()
  puts "Goodbye"
end

def run(songs)
  loop do
    puts "Please enter a command:"
    input = gets.strip
    case input
    when "help"
      help
    when "list" 
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break 
    else 
      puts "Invalid command"
    end
  end
end