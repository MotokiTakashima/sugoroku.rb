require "./character"
require "./dice"
class Player < Character

  def roll_dice(dice)
    print "あなたの番です。1から6の好きな数字を選んでください。"
    while true
      break if (1..6).include?(gets.to_i)
      puts "1~6の番号を入力してください。"
    end
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
    end
    puts "#{@position}マス目にとまりました。"
  end

  def show_square(map)
    if @position < map.max_square
      puts <<~text
             現在、#{@position}マス目です。

           text
    elsif @position > map.max_square
      puts <<~text
             ちょうどでなければゴールできません
             #{@position - map.max_square}マス戻ります。
             text
      @position = map.max_square - (@position - map.max_square)
      puts "現在、#{@position}マス目です。"
      disp_square(map)
    elsif @position == map.max_square
      puts "ゴールしました！！！あなたの勝ちです！！"
    end
  end
  
  def disp_square(map)
    puts "□ " * (@position - 1) + "=■= " + "□ " * (map.max_square - @position)
  end
end
