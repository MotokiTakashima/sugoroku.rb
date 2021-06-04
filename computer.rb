class Computer < Character

  def roll_dice
    puts "CPUがサイコロを振ります"
    @dice_number = rand(1..6)
  end

  def disp_square(map)
    if @position > 0
      puts "□ " * (@position - 1) + "▲ " + "□ " * (map.max_square - @position)
    else
      puts "□ " * map.max_square
    end
  end
end