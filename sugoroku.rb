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
    ゴールまで#{map.masu}マスです
    text
    
  end

  def start(player, computer, map, dice)
    while player.me < map.masu && computer.cpu < map.masu
      #プレイヤーのサイコロを振らす処理
      player_roll_the_dice(player, dice)
      #サイコロの出目の表示
      dice.disp_the_dice(@number_the_dice)
      #プレイヤーのサイコロの出目が表示され、進んだ位置を表示
      advance_the_piece(map, player)
      #プレイヤーが止まったマスのギミック
      map.active_gimikku_player(player)
      #プレイヤーの現在地を表示、ゴール判定
      current_square_player(map, player)
      if player.me == map.masu
        break
      end
      #CPUがサイコロを振り、出目が表示され、進んだマスを表示
      cpu_roll_the_dice(computer, map, dice)
      #CPUが止まったマスのギミック
      map.active_gimikku_computer(computer)
      #CPUの現在地を表示、ゴール判定
      current_square_computer(map, computer)
    end
  end
  
  #プレイヤーのサイコロを振らす処理
  def player_roll_the_dice(player, dice)
      print "あなたの番です。サイコロを振ってください (エンターキーをクリック)"
      gets.to_i
      @number_the_dice = rand(1..6)
      player.me += @number_the_dice
  end

  #プレイヤーのサイコロの出目が表示され、進んだ位置を表示
  def advance_the_piece(map, player)
      puts <<~text
      サイコロの目は#{@number_the_dice}です。
      #{@number_the_dice}マス進みます。
      
      text
      if player.me < map.masu
       map.disp_player_masu(player)
       puts ""
      end
      puts "#{player.me}マス目にとまりました。"
  end


  
  #プレイヤーの現在地を表示、ゴール判定
  def current_square_player(map, player)
    if player.me < map.masu
      puts <<~text
      現在、#{player.me}マス目です。

      text
    elsif player.me > map.masu
      puts <<~text
      ちょうどでなければゴールできません
      #{player.me - map.masu}マス戻ります。
      現在、#{map.masu - (player.me - map.masu)}マス目です。

      text
      player.me = map.masu - (player.me - map.masu)
      if player.me < map.masu
       map.disp_player_masu(player)
      end
    elsif player.me == map.masu
      puts "ゴールしました！！！あなたの勝ちです！！"
    end
  end

  #CPUがサイコロを振り、出目が表示され、進んだマスを表示
  def cpu_roll_the_dice(computer, map, dice)
      puts "CPUがサイコロを振ります"
      @number_the_dice = rand(1..6)

      dice.disp_the_dice(@number_the_dice)
      
      puts <<~text
      サイコロの目は#{@number_the_dice}です。
      #{@number_the_dice}マス進みます。
      
      text

      computer.cpu += @number_the_dice
      if computer.cpu < map.masu
       map.disp_computer_masu(computer)
       puts ""
      end
      puts "CPUは、#{computer.cpu}マス目にとまりました。"
      puts ""
  end

  #CPUの現在地を表示、ゴール判定
  def current_square_computer(map, computer)
    if computer.cpu < map.masu
      puts <<~text
      現在CPUは、#{computer.cpu}マス目です。
      =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
      text
    elsif computer.cpu > map.masu
      puts <<~text
      ちょうどでなければゴールできません
      #{computer.cpu - map.masu}マス戻ります。
      text
      computer.cpu = map.masu - (computer.cpu - map.masu)
      map.disp_computer_masu(computer)
      puts <<~text
      現在、#{map.masu - (computer.cpu - map.masu)}マス目です。
      =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
      text
    elsif computer.cpu == map.masu
      puts "CPUがゴールしました。あなたの負けです。"
    end
  end
  
end