require_relative("board")

# setup payer Class for guesses and such
class Player
  def initialize; end

  attr_accessor :prev_guess

  def self.colors
    guess = Array.new(4, "")
    (0...4).each do |i|
      print "Please enter guess #{i + 1}: "
      guess[i] = gets.chomp
    end
    guess
  end
end
