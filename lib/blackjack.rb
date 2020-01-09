def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  sum = card_1 + card_2
  display_card_total(sum)
  return sum
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  if input == "s"
    current_total
  elsif input == "h"
    current_total += deal_card
  else
    invalid_command
    hit?(current_total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  current_total = initial_round
  if current_total <= 21 
    current_total = hit?(current_total)
    display_card_total(current_total)
  end 
  end_game(current_total)
end
    
