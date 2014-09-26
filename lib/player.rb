class Player
  attr_accessor
  def initialize
    @hand = []
  end
  def hand
    @hand
  end
  def pick_num
    puts "Pick a number between 1 and 9"
    @num = gets.chomp.to_i
    @hand << @num
    check_hand(@player)
  end
  def check_hand(player)
    if player.hand.include? @numbers
      @numbers.each do
        @numbers.delete(num)
        puts @numbers
      end
    else
      return nil
    end
  end
  def hand_total
    @hand.inject(:+)
  end
end
