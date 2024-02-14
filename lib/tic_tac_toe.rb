# Methods relating to the game of tic-tac-toe
class TicTacToe
  
  def initialize
    @game = Array.new(9, ' ')
    @gameboard = "--Gameboard--\n| #{@game[0]} | #{@game[1]} | #{@game[2]} |\n|" \
     " #{@game[3]} | #{@game[4]} | #{@game[5]} |\n| #{@game[6]} | #{@game[7]} | #{@game[8]} |\n-------------"
     @turn = 1   
  end

  def game_loop
    until @turn == 10 do
      player_make_move
      puts gameboard
      if check_victory?
        puts "Crosses have got three in a row and win!"
        puts "Noughts have got three in a row and win!"
        break
      end
    end
    drawn_game
  end




  private

  def drawn_game
    puts "Neither side have got three in a row and the board is filled, the game is a draw!"
  end

  def check_victory?
    case
    when @game[0, 1, 2].join == "OOO" || @game[0, 1, 2].join == "XXX" 
      true
    when @game[3, 4, 5].join == "OOO" || @game[3, 4, 5].join == "XXX" 
      true
    when @game[6, 7, 8].join == "OOO" || @game[6, 7, 8].join == "XXX" 
      true
    when @game[0, 3, 6].join == "OOO" || @game[0, 3, 6].join == "XXX" 
      true
    when @game[1, 4, 7].join == "OOO" || @game[1, 4, 7].join == "XXX" 
      true
    when @game[2, 5, 8].join == "OOO" || @game[2, 5, 8].join == "XXX" 
      true
    when @game[0, 4, 8].join == "OOO" || @game[0, 4, 8].join == "XXX" 
      true
    when @game[2, 4, 6].join == "OOO" || @game[2, 4, 6].join == "XXX" 
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

  def player_make_move
    location = 10
    puts 'Crosses to move! Enter an available numeric location on the board (1-9) to place a cross!' if @turn.odd?
    puts "Noughts to move! Enter an available numeric location on the board (1-9) to place a nought!" if @turn.even?
    until @game[location-1] == ' ' do
      location = gets.chomp.to_i
    end
    @turn += 1
    @game[location - 1] = "O" if @turn.even?
    @game[location - 1] = "X" if @turn.odd?
  end
end

game = TicTacToe.new
game.game_loop




