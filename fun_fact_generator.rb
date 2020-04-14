require 'colorize'
require 'faker'

    puts "Welcome to the Fun Fact Generator! What's your name o seeker of facts?".colorize(:light_yellow)
    name = gets.chomp.capitalize
    puts "Welcome #{name}! Would you like a fun fact? ".colorize(:light_yellow)
    response = gets.chomp.downcase
    if response == "no"
        puts "Farewell #{name}!".colorize(:light_yellow)
    end
    
    while response == "yes"
        puts Faker::ChuckNorris.fact.colorize(:light_red)
        sleep 1
        puts "Would you like another fun fact?".colorize(:light_yellow)
        response = gets.chomp.downcase
        if response == "no"
            puts "Farewell #{name}!".colorize(:light_yellow)
        end
    end
