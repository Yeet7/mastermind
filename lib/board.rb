# Creates board class
class Board
  attr_accessor :board_grid

  def initialize
    self.board_grid = Array.new(4) { "" }
  end

  def compare_to_board(board, guess)
    guess_correct = Array.new(4, "wrong")
    processed_colors = []

    # check if there at all
    board.each_with_index do |_color, i|
      if board[i] == guess[i]
        guess_correct[i] = "black"
        processed_colors << guess[i]
      elsif board.any?(guess[i]) && !processed_colors.include?(guess[i])
        guess_correct[i] = "grey"
        processed_colors << guess[i]
      end
    end
    guess_correct
  end
end
