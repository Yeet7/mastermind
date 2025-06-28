require_relative("board")

# Creates computer
class Computer
  def self.generate_choices(board)
    board.each_with_index do |_, index|
      rand_num = rand(6)
      board[index] = case rand_num
                     when 0...1
                       "red"
                     when 1..2
                       "orange"
                     when 2..3
                       "yellow"
                     when 3..4
                       "green"
                     when 4..5
                       "blue"
                     else
                       "purple"
                     end
    end
    board
  end
end
