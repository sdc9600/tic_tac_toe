# Methods relating to the game of tic-tac-toe
class TicTacToe
  attr_accessor :turn, :game

  def initialize
    @game = Array.new(9, ' ')
    @gameboard = "--Gameboard--\n| #{@game[0]} | #{@game[1]} | #{@game[2]} |\n|" \
     " #{@game[3]} | #{@game[4]} | #{@game[5]} |\n| #{@game[6]} | #{@game[7]} | #{@game[8]} |\n-------------"
     @turn = 1   
  end

  def game_loop
    location = 100
    until @turn == 10 do
      location = select_valid_location(location)
      player_make_move(location)
      @turn += 1
      puts gameboard
      if check_victory?
        return puts "Crosses have got three in a row and win!" if @turn.even?
        return puts "Noughts have got three in a row and win!" if @turn.odd?
      end
    end
    drawn_game
  end

  def drawn_game
    p "Neither side have got three in a row and the board is filled, the game is a draw!"
  end

  def check_victory?
    case
    when @game[0..2].join == "OOO" || @game[0..2].join == "XXX" 
      true
    when @game[3..5].join == "OOO" || @game[3..5].join == "XXX" 
      true
    when @game[6..8].join == "OOO" || @game[6..8].join == "XXX" 
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

  def gameboard
    @gameboard = "--Gameboard--\n| #{@game[0]} | #{@game[1]} | #{@game[2]} |\n|" \
     " #{@game[3]} | #{@game[4]} | #{@game[5]} |\n| #{@game[6]} | #{@game[7]} | #{@game[8]} |\n-------------"
    @gameboard
  end

  def player_make_move(location)
    if @turn.odd?
      @game[location - 1] = "X"
      return @game[location - 1]
    end
    if @turn.even?
      @game[location - 1] = "O"
      return @game[location - 1]
    end
  end

  private

  def select_valid_location(location)
    puts 'Crosses to move! Enter an available numeric location on the board (1-9) to place a cross!' if @turn.odd?
    puts 'Noughts to move! Enter an available numeric location on the board (1-9) to place a nought!' if @turn.even?
    until @game[location - 1] == " "
      location = $stdin.gets.chomp.to_i
    end
    location
  end
end

#game = TicTacToe.new
#game.game_loop



