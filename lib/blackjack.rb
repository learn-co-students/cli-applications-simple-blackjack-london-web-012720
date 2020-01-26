def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  return card
end

def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    gets.chomp
end

def end_game(card_tot)
puts  "Sorry, you hit #{card_tot}. Thanks for playing!"
end

def initial_round
  first = deal_card + deal_card
  display_card_total(first)
  return first
end

def hit?(card_tot)
prompt_user
 user_in = get_user_input

    if user_in == "h"
      card_tot += deal_card
    elsif user_in == "s"
      card_tot
    else
      invalid_command
      prompt_user
      user_in = get_user_input
    end
card_tot
end

def invalid_command
 puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
card_tot = initial_round
until card_tot > 21
card_tot = hit?(card_tot)
display_card_total(card_tot)
end
   end_game(card_tot)
end
