class Player
  attr_accessor
  def initialize()
    @hand = []

  end
  def hand
    @hand
  end
  def pick_num()
    puts "Pick a number between 1 and 9"
    @num = gets.chomp.to_i
    @hand << @num
    check_hand(@player)
    return @num
  end
  def check_hand(player)
    if @hand != nil
      hand_total(@player)
    else
      return 0
    end
  end
  def hand_total(player)
    puts @hand.inject(:+)
  end
end
