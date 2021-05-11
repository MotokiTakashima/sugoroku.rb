class Computer < Character

  def roll_dice
    puts "CPUがサイコロを振ります"
    @number_dice = rand(1..6)
  end

  def disp_square(map)
    puts "□ " * (@position - 1) + "▲ " + "□ " * (map.max_square - @position)
  end
end