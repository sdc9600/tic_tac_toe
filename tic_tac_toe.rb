# frozen_string_literal: true

# Methods relating to the game of tic-tac-toe
class TicTacToe
  def initialize
    @game = Array.new(9, ' ')
    @gameboard = "--Gameboard--\n| #{@game[0]} | #{@game[1]} | #{@game[2]} |\n|" \
     " #{@game[3]} | #{@game[4]} | #{@game[5]} |\n| #{@game[6]} | #{@game[7]} | #{@game[8]} |\n-------------"
  end

  def check_victory?
    case
    when @game[0] + @game[1] + game[2] == "OOO" || "XXX"
      return true
    when @game[3] + @game[4] + game[5] == "OOO" || "XXX"
      return true
    when @game[6] + @game[7] + game[8] == "OOO" || "XXX"
      return true
    when @game[0] + @game[3] + game[6] == "OOO" || "XXX"
      return true
    when @game[1] + @game[4] + game[7] == "OOO" || "XXX"
      return true
    when @game[2] + @game[5] + game[8] == "OOO" || "XXX"
      return true
    when @game[0] + @game[4] + game[8] == "OOO" || "XXX"
      return true
    when @game[2] + @game[4] + game[6] == "OOO" || "XXX"
      return true  
    else
      return false
    end
  end

  def print_gameboard
    @gameboard
  end
  def print_gameboard_array
    @game
  end
end

# Methods relating to the players of the game tic-tac-toe
class Players < TicTacToe
  def initialize
    super
  end
  def make_move_crosses
      location = 10
      puts 'Crosses to move! Enter an available numeric location on the board (1-9) to place a cross!'
      until @game[location-1] == ' ' do
      location = gets.chomp.to_i
    end
    @game[location-1] = "X"
  end
  def make_move_noughts
    location = 10
    puts "Crosses to move! Enter an available numeric location on the board (1-9) to place a nought!"
    until @game[location] == ' ' do
      location = gets.chomp.to_i
    end
  end
end


players = Players.new

puts players.print_gameboard
players.make_move_crosses
puts players.print_gameboard_array
puts players.print_gameboard