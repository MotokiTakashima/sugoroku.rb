require "./character"
require "./dice"
class Player < Character

  #プレイヤーのサイコロを振らす処理
  def roll_dice(dice)
    print "あなたの番です。1から6の好きな数字を選んでください。"
    while true
      break if (1..6).include?(gets.to_i)
      puts "1~6の番号を入力してください。"
    end
    @number_dice = rand(1..6)
    @position += @number_dice
  end
  
  #PLAYERの現在地
  def disp_square(map)
    puts "□ " * (@position - 1) + "=■= " + "□ " * (map.max_square - @position)
  end
end

player = Player.new(0)
puts player.position
