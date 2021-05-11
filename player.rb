class Player < Character

  def roll_dice
    print "あなたの番です。エンターキーを押してください"
    @number_dice = gets.to_i
    @number_dice = rand(1..6)
  end

  def show_square(map)
    if @position < map.max_square
      change_position
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
    end
  end
  
  def disp_square(map)
    puts "□ " * (@position - 1) + "■ " + "□ " * (map.max_square - @position)
  end
end
