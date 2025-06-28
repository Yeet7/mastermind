# Creates board class
class Board
  attr_accessor :board_grid

  def initialize
    self.board_grid = Array.new(4, "")
  end
end
