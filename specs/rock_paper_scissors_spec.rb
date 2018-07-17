require('minitest/autorun')
require('minitest/rg')
require_relative('../models/rock_paper_scissors.rb')

class TestRPC < MiniTest::Test
  def setup
    @game1 = Game.new("rock", "scissors")
    @game2 = Game.new("paper", "scissors")
    @game3 = Game.new("rock", "rock")
  end

  def test_rock_beats_scissors
    assert_equal("Player one wins", @game1.play)
  end

  def test_game_ties
    assert_equal("It's a tie!", @game3.play)
  end
end
