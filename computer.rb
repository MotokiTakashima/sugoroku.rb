require "./character"
class Computer < Character

  def disp_square(map)
    puts "□ " * (@position - 1) + "=▲= " + "□ " * (map.max_square - @position)
  end
end