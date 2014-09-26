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
  end
  def check_hand(player)
    # player.hand.include? @numbers
      @numbers.each do |x|
        @numbers.delete_at()
        puts @numbers
      end
  end
  def hand_total
    @hand.inject(:+)
  end
end
