# Methods relating to the game of tic-tac-toe
class TicTacToe
  
  def initialize
    @game = Array.new(9, ' ')
    @gameboard = "--Gameboard--\n| #{@game[0]} | #{@game[1]} | #{@game[2]} |\n|" \
     " #{@game[3]} | #{@game[4]} | #{@game[5]} |\n| #{@game[6]} | #{@game[7]} | #{@game[8]} |\n-------------"
     @turn = 1   
  end

  def game_loop
    until 1==0 do
      player_make_move
      puts print_gameboard
      if check_victory?
        puts "Crosses have got three in a row and win!"
        break
      end
      if @turn == 10
        puts "Neither side have got three in a row and the board is filled, the game is a draw!"
        break
      end
      player_make_move
      puts print_gameboard
      if check_victory?
        puts "Noughts have got three in a row and win!"
        break
      end
    end
  end

  private
  def check_victory?
    case
    when @game[0] + @game[1] + @game[2] == "OOO" || @game[0] + @game[1] + @game[2] == "XXX" 
      true
    when @game[3] + @game[4] + @game[5] == "OOO" || @game[3] + @game[4] + @game[5] == "XXX" 
      true
    when @game[6] + @game[7] + @game[8] == "OOO" || @game[6] + @game[7] + @game[8] == "XXX" 
      true
    when @game[0] + @game[3] + @game[6] == "OOO" || @game[0] + @game[3] + @game[6] == "XXX" 
      true
    when @game[1] + @game[4] + @game[7] == "OOO" || @game[1] + @game[4] + @game[7] == "XXX" 
      true
    when @game[2] + @game[5] + @game[8] == "OOO" || @game[2] + @game[5] + @game[8] == "XXX" 
      true
    when @game[0] + @game[4] + @game[8] == "OOO" || @game[0] + @game[4] + @game[8] == "XXX" 
      true
    when @game[2] + @game[4] + @game[6] == "OOO" || @game[2] + @game[4] + @game[6] == "XXX" 
      true  
    else
      false
    end
  end

  def print_gameboard
    @gameboard = "--Gameboard--\n| #{@game[0]} | #{@game[1]} | #{@game[2]} |\n|" \
     " #{@game[3]} | #{@game[4]} | #{@game[5]} |\n| #{@game[6]} | #{@game[7]} | #{@game[8]} |\n-------------"
    @gameboard
  end

  def player_make_move
    location = 10
    puts 'Crosses to move! Enter an available numeric location on the board (1-9) to place a cross!' if @turn.odd?
    puts "Noughts to move! Enter an available numeric location on the board (1-9) to place a nought!" if @turn.even?
    until @game[location-1] == ' ' do
      location = gets.chomp.to_i
    end
    @game[location - 1] = "O" if @turn.even?
    @game[location - 1] = "X" if @turn.odd?
    @turn += 1
  end
end

game = TicTacToe.new
game.game_loop




