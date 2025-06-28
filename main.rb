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

      # puts Computer.generate_choices(board.board_grid)
      Computer.generate_choices(board.board_grid)
      (0...12).each do |i|
        puts "Round #{i + 1}!"
        guess = Player.guess

        puts board.compare_to_board(board.board_grid, guess)

        if winner?(board.board_grid, guess)
          puts "Congrats! You've cracked the code!"
          break
        end
      end
    end

    def winner?(board, guess)
      board == guess
    end
  end
end

game = Game::Game.new
game.play_game
