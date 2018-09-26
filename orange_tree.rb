class OrangeTree

  def initialize
    @years_old = 0
    @height = 0
    @number_of_oranges = 0
  end

  def one_year_passes
    @years_old += 1
    @height += 2
  end

  def count_oranges
    if @number_of_oranges = 0
      puts "Unfortunately, there are no oranges on your tree!"
    elsif @number_of_oranges = 1
      puts "You have 1 orange on your tree!"
    else
      puts "There are #{@number_of_oranges} on your tree!"
    end
  end
end
