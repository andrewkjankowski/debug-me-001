require_relative './jukebox.rb'

def run
  puts "Welcome to Ruby Console Jukebox!"
  prompt
  command = get_command
  while command.downcase != "exit" do
    run_command(command.downcase) unless command.downcase == "exit"
    prompt
    command = get_command
  end
end

def prompt
  puts "Enter a command to continue. Type 'help' for a list of commands."
end

def get_command
  gets.strip
end

def run_command(command)
  case command
  when "help"
    show_help
  else
    jukebox(command)
  end
end

def show_help
  puts "Never worked a jukebox, eh? Pretty standard. Available commands are:\n"
  puts "'help' - shows this menu\n"
  puts "'list' - lists the whole song library\n"
  puts "or you can enter an artist's name to show that artist's songs\n"
  puts ""
end

run
