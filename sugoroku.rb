require "./map"
require "./player"
require "./computer"
require "./dice"
require "./character"

class Sugoroku

  def informaition(map)
    puts <<~text
    ----------------------------------
    |                                |
    |         すごろくゲーム         |
    |                                |
    ----------------------------------
    ゴールまで#{map.max_square}マスです
    text
    
  end

  def start(player, computer, map, dice, character)
    while player.position < map.max_square && computer.position < map.max_square
      #プレイヤーのサイコロを振らす処理
      player.roll_dice(dice)
      #サイコロの出目の表示
      dice.disp_dice(player, computer)
      #プレイヤーの進んだ位置を表示
      player.move_forward(map)
      #プレイヤーが止まったマスのギミック
      map.activate_gimmick(character)
      #プレイヤーの現在地を表示、ゴール判定
      player.show_square(map)
      if player.position == map.max_square
        break
      end
      #CPUがサイコロを振り、進んだマスを表示
      computer.roll_dice(player, map, dice, computer)
      #CPUが止まったマスのギミック
      map.activate_gimmick(character)
      #CPUの現在地を表示、ゴール判定
      computer.show_square(map)
    end
  end
end