require "./map"
require "./player"
require "./computer"
require "./dice"

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

  def start(player, computer, map, dice)
    while player.position < map.max_square && computer.position < map.max_square
      #プレイヤーのサイコロを振らす処理
      player.roll_dice(dice)
      #サイコロの出目の表示
      dice.disp_dice(player, computer)
      #プレイヤーのサイコロの出目が表示され、進んだ位置を表示
      player.move_forward(map)
      #プレイヤーが止まったマスのギミック
      map.activate_gimmick_player(player, map)
      #プレイヤーの現在地を表示、ゴール判定
      player.show_square(map)
      if player.position == map.max_square
        break
      end
      #CPUがサイコロを振り、出目が表示され、進んだマスを表示
      cpu_roll_dice(player, computer, map, dice)
      #CPUが止まったマスのギミック
      map.activate_gimmick_computer(computer, map)
      #CPUの現在地を表示、ゴール判定
      show_square_computer(map, computer)
    end
  end

  def cpu_roll_dice(player, computer, map, dice)
      puts "CPUがサイコロを振ります"
      @number_dice = rand(1..6)

      dice.disp_dice(player, computer)
      
      puts <<~text
      サイコロの目は#{@number_dice}です。
      #{@number_dice}マス進みます。
      
      text

      computer.position += @number_dice
      if computer.position < map.max_square
       computer.disp_square(map)
       puts ""
      end
      puts "CPUは、#{computer.position}マス目にとまりました。"
      puts ""
  end

  def show_square_computer(map, computer)
    if computer.position < map.max_square
      puts <<~text
      現在CPUは、#{computer.position}マス目です。
      =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
      text
    elsif computer.position > map.max_square
      puts <<~text
      ちょうどでなければゴールできません
      #{computer.position - map.max_square}マス戻ります。
      text
      computer.position = map.max_square - (computer.position - map.max_square)
      computer.disp_square(map)
      puts <<~text
      現在、#{map.max_square - (computer.position - map.max_square)}マス目です。
      =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
      text
    elsif computer.position == map.max_square
      puts "CPUがゴールしました。あなたの負けです。"
    end
  end
  
end