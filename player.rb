class Player < Character

  def roll_dice
    print "あなたの番です。エンターキーを押してください"
    @number_dice = gets.to_i
    @number_dice = rand(1..6)
  end
  
  def disp_square(map)
    puts "□ " * (@position - 1) + "■ " + "□ " * (map.max_square - @position)
  end
end
