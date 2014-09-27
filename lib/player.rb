class Player
  attr_accessor :num, :hand
  def initialize()
    @hand = []
  end
  def pick_num
    puts "Pick a number between 1 and 9"
    @num = gets.chomp.to_i
    @hand << @num
    @numbers.delete(@num)
    return @num
  end
  def check_hand_total
    if @hand != nil
     return @hand.inject(:+).to_i
    else
      return 0
    end
  end
end
