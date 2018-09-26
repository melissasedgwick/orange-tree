class OrangeTree

  def initialize
    @years_old = 0
    @height = 0
    @number_of_oranges = 0
    $status = "alive"
    puts "You've planted a baby orange tree!"
  end

  def one_year_passes
    @years_old += 1
    case @years_old
    when 7
      puts "Your orange tree has lived a good life, but this life has now come to an end."
      $status = "dead"
    when 5..6
      puts "Your orange tree has aged a year and grown bigger!"
      puts "It has grown a lot of new oranges!"
      @number_of_oranges += 4
    when 3..4
      puts "Your orange tree has aged a year and grown bigger!"
      puts "It has grown a few new oranges!"
      @number_of_oranges += 2
    when 0..2
      puts "Your orange tree has aged a year and grown bigger!"
      puts "It's not yet old enough to grow oranges, though."
    end
    @height += 2
  end

  def count_oranges
    if @number_of_oranges == 0
      puts "Unfortunately, there are no oranges on your tree!"
    elsif @number_of_oranges == 1
      puts "You have 1 orange on your tree!"
    else
      puts "There are #{@number_of_oranges} on your tree!"
    end
  end

  def pick_orange
    tastes = ["good", "sweet", "sour", "bad", "like the best orange you've ever had"]
    if @number_of_oranges == 0
      puts "Unfortunately, there are no oranges for you to pick!"
    else
      puts "You pick an orange and eat it. It tastes #{tastes.sample}!"
      @number_of_oranges -= 1
    end
  end

end

def turn
  puts "What would you like to do?"
  @action = gets.chomp.capitalize
end

def action
  case @action
  when "Pass year"
    @tree.one_year_passes
  when "Count oranges"
    @tree.count_oranges
  when "Pick orange"
    @tree.pick_orange
  else
    puts "I don't understand, please try again."
  end
end

def start
  @tree = OrangeTree.new
  while $status == "alive" do
    turn
    exit if @action == "Exit"
    action
  end
end

start
