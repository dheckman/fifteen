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
    assert (1..9).to_a.includes?(Player.new.pick_num)
  end
end
