def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  dealt_card = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  #deal card twice 
  #sum them 
  #display sum
  #ask if they want to hit 
  card1 = deal_card
  card2 = deal_card
  initial_sum = card1+card2
  display_card_total(initial_sum)
  return initial_sum

end

def hit?(current_total)
  prompt_user
  answer = get_user_input
  if answer == "s"
    current_total = current_total
  elsif answer == "h"
    new_card = deal_card
    current_total = current_total+new_card
  else
    invalid_command
  end
  return current_total
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  game_total = initial_round
  while game_total <= 21
    game_total = hit?(game_total)
    display_card_total(game_total)
  end
  end_game(game_total)
end
    
