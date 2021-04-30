require "./character"
require "./dice"
class Computer < Character

  def roll_dice
    puts "CPUがサイコロを振ります"
    @number_dice = rand(1..6)
  end

  def move_forward(map)
    puts <<~text
    サイコロの目は#{@number_dice}です。
    #{@number_dice}マス進みます。
    
    text
    @position += @number_dice
    if @position < map.max_square
      disp_square(map)
      puts ""
      puts "#{@position}マス目にとまりました。"
    elsif @position > map.max_square
      puts "出た目の数がゴールを#{@position - map.max_square}マス分超えました。"
    end
  end
    
  def show_square(map)
    if @position < map.max_square
      change_position
      puts <<~text
             現在CPUは、#{@position}マス目です。
             =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
           text
    elsif @position > map.max_square
      puts <<~text
             ちょうどでなければゴールできません
             #{@position - map.max_square}マス戻ります。
           text
      @position = map.max_square - (@position - map.max_square)
      disp_square(map)
      puts <<~text
             現在、#{@position}マス目です。
             =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
           text
    end
  end

  def disp_square(map)
    puts "□ " * (@position - 1) + "=▲= " + "□ " * (map.max_square - @position)
  end
end