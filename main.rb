require_relative("lib/board")
require_relative("lib/computer")
require_relative("lib/player")

module Game
  # Game logic, contrls general game flow and imports all sub-classes
  class Game
    def initialize
      puts "Lets play a game of Mastermind!"
    end

    def play_game
      board = Board.new

      puts Computer.generate_choices(board.board_grid)
      # (1...12).each do |i|
      # end
    end
  end
end

game = Game::Game.new
game.play_game
