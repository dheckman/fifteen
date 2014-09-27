#require_relative "player"
class Player
  attr_accessor :num, :hand
  def initialize()
    @hand = []
  end
  def pick_num(player)
    puts "Pick a number between 1 and 9"
    @num = gets.chomp.to_i
    @hand << @num
    if @hand != nil
     return @hand.inject(:+).to_i
    else
      return 0
    end
  end
end
class Fifteen
  attr_accessor :player, :numbers
  def initialize
    @player = Player.new
    @computer = Player.new
    @numbers = (1..9).to_a
    @WIN = 15
  end
  def get_name
    puts "Hello! What is your name?"
    name = gets.chomp.capitalize
    puts "Okay #{name}, let's get started!"
  end
  def start
    get_name
    heads_or_tails = ["heads","tails"].sample
    puts "Heads or tails?"
    player_answer = gets.chomp.downcase
      if player_answer == heads_or_tails
        puts "You win!"
        run
      else
        puts "YOU LOSE. Computer goes first."
        computer_turn
        run
      end
  end
  def sum(array)
    array.inject{|sum,x| sum + x}
  end
  def pick_num
      puts "Pick a number between 1 and 9"
      @num = gets.chomp.to_i
      @player.hand << @num
      @numbers.delete(@num)
    puts "You have the following numbers: #{@player.hand}. The remaining numbers are #{@numbers}."
  end
  def computer_turn
    @computer_choice = @numbers.sample
    @computer.hand << @computer_choice
    @numbers.delete(@computer_choice)
    puts "The computer chose a(n) #{@computer_choice}. Computer's numbers are: #{@computer.hand}. The remaining numbers are #{@numbers}"

  end
  def run
    pick_num
    computer_turn
    pick_num
    computer_turn
    computer_win?
    pick_num
    player_win?
    computer_turn
    computer_win?
    pick_num
    player_win?
    computer_turn
    computer_win?
    if @numbers.empty?
      puts "Game over, out of numbers! \n Play again?"
      answer = gets.chomp.downcase
      if answer == "yes"
        start
      else
        puts "BYEEEEEE."
      end
    end
    pick_num
  end
  def computer_win?
    c = @computer.hand.combination(3).to_a
    if c.any? { |x| sum(x) == 15 }
      puts "Game over, computer wins!"
      exit
    else
    end
  end
  def player_win?
    p = @player.hand.combination(3).to_a
    if p.any? { |x| sum(x) == 15 }
      puts "Game over, player wins!"
      exit
    else
    end
  end
end
me = Fifteen.new
me.start
