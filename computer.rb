require "./character"
require "./dice"
class Computer < Character

  def roll_dice(player, map, dice, computer)
    puts "CPUがサイコロを振ります"
    @number_dice = rand(1..6)

    dice.disp_dice(player, computer)

    puts <<~text
           サイコロの目は#{@number_dice}です。
           #{@number_dice}マス進みます。
      
           text

    @position += @number_dice
    if @position < map.max_square
      disp_square(map)
      puts ""
    end
    puts "CPUは、#{@position}マス目にとまりました。"
    puts ""
  end


  def disp_square(map)
    puts "□ " * (@position - 1) + "=▲= " + "□ " * (map.max_square - @position)
  end
end