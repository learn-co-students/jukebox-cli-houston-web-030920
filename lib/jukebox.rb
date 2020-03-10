# Add your code here

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end


def list(songs)
    songs.each_with_index do |item,index|
    puts "#{index+1}. #{item}"
    end
end


def play(songs)
    # puts "Please enter a song name or number:"
    # user_input = gets.strip # => "1"

    # index = 0

    #     songs.each do |song|
    #         if song == user_input
    #             puts "Playing #{song}"
    #         elsif user_input.to_i == index+1  # "1" 1
    #             puts "Playing #{song}"
    #             index += 1
    #         end
    #     end
        
    # puts "Invalid input, please try again"

    puts "Please enter a song name or number:"
    response = gets.chomp
    if response.to_i >= 1 && response.to_i <= songs.length
      puts "Playing #{songs[response.to_i-1]}"
    elsif songs.include?(response)
      puts "Playing #{songs.find{|song| song == response}}"
    else
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    puts "Please enter a command:"
    user_input = gets.chomp
    case user_input
        
    when 'exit'
        exit_jukebox
    when 'help'
       help
    when 'list'
        list(songs)
    when 'play'
        play(songs)
    end
        

end