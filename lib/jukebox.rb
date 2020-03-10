def help
    puts"I accept the following commands:"
    puts"- help : displays this help message"
    puts"- list : displays a list of songs you can play"
    puts"- play : lets you choose a song to play"
    puts"- exit : exits this program"
end

def list(songs)
    songs.each_with_index{|song,index| puts "#{index + 1}. #{song} "}
end

def play(songs)
    puts "Please enter a song name or number:"
    user_input = gets.chomp
    if songs.include?(user_input)
        puts "Playing #{songs.find do |song| song == user_input end}"
    elsif user_input.to_i >= 1 && user_input.to_i < songs.length
        puts "Playing #{songs[user_input.to_i-1]}"
    else
        puts "Invalid input, please try again"
    end
end
        
def exit_jukebox
    puts "Goodbye"
end


def run(songs)
    puts "Please enter a command:"
    user_input = gets.strip
    case user_input
    when 'exit'
        exit_jukebox
    when 'help'
        help
    when 'play'
        play(songs)
    when 'list'
        list(songs)
    end
end
