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
    if @hand.include? @numbers
      @numbers.delete(@num)
    end
  end
  def hand_total
    @hand.inject(:+)
  end
end
class Fifteen
  attr_accessor :player, :numbers
  def initialize
    puts "Hello! What is your name?"
    @name = gets.chomp.capitalize
    puts "Okay #{@name}, let's get started!"
    @player = Player.new
    @computer = Player.new
    @numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    start
  end
  def start
    @heads_or_tails = ["heads","tails"].sample
    puts "Heads or tails?"
    @player_answer = gets.chomp.downcase
      if @player_answer == @heads_or_tails
        puts "You win!"
        @player.pick_num
        # check_hand(@player)
      else
        puts "YOU LOSE. Computer goes first."
        @computer.hand << @numbers.sample
        puts "The computer chose a(n) #{@computer.hand}."
      end
  end
  def win(hand)
    #if player or computer has at least three cards that total exactly 15
  end
end




me = Fifteen.new
