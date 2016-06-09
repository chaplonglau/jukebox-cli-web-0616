require 'pry'

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
  songs.each_with_index do |song,index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response= gets.chomp

  songs.each_with_index do |song,index|
    if song==response
      puts "Playing #{song}"
      break;
    elsif (index+1).to_s==response
      puts "Playing #{song}"
      break;
    end
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
    help
    response =""
    ARGV.clear
    while response != "exit" do
      puts "Please enter a command: "
      response= gets.chomp
      case response
      when "help"
          help
      when "list"
          list(songs)
      when "play"
          play(songs)
      when "exit"
          exit_jukebox
          break;
      else
        puts "try again"
      end
    end
  
end

run(songs)