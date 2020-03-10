def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
  end 
  
  help
  
  def play(songs)
    puts "Please enter a song name or number:"
    input = gets.chomp
    if(1..9).to_a.include?(input.to_i)
        puts "Playing #{songs[input.to_i - 1]}"
    elsif songs.include?(input)
        puts input
    elsif
        puts "Invalid input, please try again"
    end
  end
  
  def list(songs)
    songs.each.with_index do |song, index|
        puts "#{index + 1}. #{song}"
    end
  end
  
  def exit_jukebox
    puts "Goodbye"
  end
  
  def run(songs)
    loop do 
    puts "Please enter a command:"
        command = gets.chomp
        if command == "exit"
            exit_jukebox()
            break
        elsif command == "list"
            list(songs)
        elsif command == "play"
            play(songs)
        else command == "help"
            help()
        end
    end
  end