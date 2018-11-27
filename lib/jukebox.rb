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

# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter you name:" 
# users_name = gets.chomp
# puts say_hello(users_name)

def help
  puts "
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  user_input = gets.chomp()
  if (1..9).to_a.include?(user_input.to_i)
    puts "Playing #{songs_array[user_input.to_i - 1]}"
  elsif songs_array.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  # help
  users_response = ""
  while users_response
    puts "Please enter a command:"
    users_response = gets.chomp()
    case users_response
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end






