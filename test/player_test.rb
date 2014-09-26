require "minitest/autorun"
require "player"

class PlayerTest < Minitest::Unit::TestCase
  def test_player_initialize
    assert Player.new
  end

  def test_new_player_has_empty_hand
    assert Player.new.hand.empty?
  end

  def test_player_picks_number
    Player.new.pick_num == 2
  end

  
end
