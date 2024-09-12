# frozen_string_literal: true

class InvalidChoiceError < StandardError
  def initialize(msg = "invalid choice. Try again")
    super
  end
end

def play_game(first_choice, second_choice)
  if first_choice == second_choice
    "the game ended in a draw"
  elsif (first_choice == "rock" && second_choice == "scissors") ||
    (first_choice == "scissors" && second_choice == "paper") ||
    (first_choice == "paper" && second_choice == "rock")
      "the first player wins"
  else
    "the second player wins"
    end
end

puts"Rock-Paper-Scissors Game"
actions = %w[rock paper scissors]
begin
  puts "Arguments: #{ARGV}"
  first_choice = ARGV[0]
  second_choice = ARGV[1]
  unless actions.include?(first_choice) && actions.include?(second_choice)
    raise InvalidChoiceError
  end
  puts play_game(first_choice, second_choice)
rescue InvalidChoiceError => e
  puts e.message
end

