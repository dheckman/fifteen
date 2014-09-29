require "minitest/autorun"
require "player"
require "fifteen"

class PlayerTest < Minitest::Unit::TestCase
  def test_player_initialize
    p = Player.new
    assert_not_nil p
  end

  # def test_new_player_has_empty_hand
  #   assert Player.new.hand.empty?
  # end
  #
  # def test_player_picks_number
  #   Player.new.pick_num == 2
  # end
  #
  # def test_check_hand
  #   p = Player.new
  #   orig = p.check_hand(nil)
  #   p.pick_num
  #   updated = p.check_hand(nil)
  #   puts orig
  #   puts updated
  #   assert updated != orig
  # end
end
