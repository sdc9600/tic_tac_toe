require './lib/tic_tac_toe.rb'
require 'stringio'

describe TicTacToe do
  let(:play_game)  { TicTacToe.new }
  
  describe "#player_make_move" do
    it "Returns a cross in the user-specified location" do
      play_game.instance_variable_set(:@turn, 1)
      expect(play_game.player_make_move(5)).to eq("X")
    end

    it "Returns a nought in the user-specified location" do
      play_game.instance_variable_set(:@turn, 2)
      expect(play_game.player_make_move(5)).to eq("O")
    end
  end

  describe "#check_victory?" do
    it "Returns true if there are three crosses in a row" do
      play_game.instance_variable_set(:@game, ["X", "X", "X"])
      expect(play_game.check_victory?).to eq(true)
    end
    it "Returns true if there are three noughts in a row" do
      play_game.instance_variable_set(:@game, [" ", "O", " "," ", "O", " "," ", "O", " "])
      expect(play_game.check_victory?).to eq(true)
    end
    it "Returns false if there are not three noughts or crosses in a row" do
      play_game.instance_variable_set(:@game, ["X","O","X","O","X","O", " ", " ", " "])
      expect(play_game.check_victory?).to eq(false)
    end
  end

  describe "#game_loop" do
    it "Returns drawn game when turn is equal to 10" do
      play_game.instance_variable_set(:@turn, 10)
      expect(play_game.game_loop).to eq("Neither side have got three in a row and the board is filled, the game is a draw!")
    end
  end
end

