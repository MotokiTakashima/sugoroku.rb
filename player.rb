class Player < Character

  def roll_dice
    puts ""
    print "あなたの番です。エンターキーを押してください"
    @number_dice = gets.to_i
    @number_dice = rand(1..6)
  end
  
  def disp_square(map)
    if @position > 0
      puts "□ " * (@position - 1) + "■ " + "□ " * (map.max_square - @position)
    else
      puts "□ " * map.max_square
    end
  end
end
