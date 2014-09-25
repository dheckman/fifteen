class Player
  attr_accessor :hand
  def initialize
    @hand = []
  end
  def hand
    @hand
  end
  def pick_num
    puts "Pick a number between 1 and 9"
    @num = gets.chomp.to_i
  end
  def add_to_hand
    @hand << @num
  end
  def hand_total
    @hand_total = @hand.inject{|sum,x| sum + x }
  end
end
class Fifteen < Player
  attr_accessor :player
  def initialize
    @player = Player.new
    @computer = Player.new
    @numbers = [1,2,3,4,5,6,7,8,9]
    get_name
  end
  def player_cards
    @player.hand
  end
  def computer_cards
    @computer.hand
  end
  def get_name
    puts "Hello! What is your name?"
    @name = gets.chomp.capitalize
    puts "Okay #{@name}, let's get started!"
    start
  end
  def start
    @heads_or_tails = ["heads","tails"]
    puts "Heads or tails?"
    @player_answer = gets.chomp.downcase
      if @player_answer == @heads_or_tails.sample
        puts "You win!"
        @player.pick_num
      else
        puts "YOU LOSE. Computer goes first."
        @computer.hand << @numbers.sample
        puts "The computer chose a(n) #{@computer.hand.pop}."
        puts @computer.total_total
      end
  end

end




me = Fifteen.new
me
