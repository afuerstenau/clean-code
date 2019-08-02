require 'minitest/autorun'
require_relative '../game_of_stones'

class GameOfStonesTest < Minitest::Test
  def test_setup_games
    game_of_stones = GameOfStones.new 10
    game_of_stones.start!
  end
end
