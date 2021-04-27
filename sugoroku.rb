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
      player_roll_the_dice(player, dice)
      #サイコロの出目の表示
      dice.disp_the_dice(@number_the_dice)
      #プレイヤーのサイコロの出目が表示され、進んだ位置を表示
      advance_the_piece(map, player)
      #プレイヤーが止まったマスのギミック
      map.activate_gimmick_player(player)
      #プレイヤーの現在地を表示、ゴール判定
      current_square_player(map, player)
      if player.position == map.max_square
        break
      end
      #CPUがサイコロを振り、出目が表示され、進んだマスを表示
      cpu_roll_the_dice(computer, map, dice)
      #CPUが止まったマスのギミック
      map.activate_gimmick_computer(computer)
      #CPUの現在地を表示、ゴール判定
      current_square_computer(map, computer)
    end
  end
  
  #プレイヤーのサイコロを振らす処理
  def player_roll_the_dice(player, dice)
    print "あなたの番です。1から6の好きな数字を選んでください。"
    while true
      break if (1..6).include?(gets.to_i)
      puts "1~6の番号を入力してください。"
    end
      @number_the_dice = rand(1..6)
      player.position += @number_the_dice
  end

  #プレイヤーのサイコロの出目が表示され、進んだ位置を表示
  def advance_the_piece(map, player)
      puts <<~text
      サイコロの目は#{@number_the_dice}です。
      #{@number_the_dice}マス進みます。
      
      text
      if player.position < map.max_square
       map.disp_player_square(player)
       puts ""
      end
      puts "#{player.position}マス目にとまりました。"
  end


  
  #プレイヤーの現在地を表示、ゴール判定
  def current_square_player(map, player)
    if player.position < map.max_square
      puts <<~text
      現在、#{player.position}マス目です。

      text
    elsif player.position > map.max_square
      puts <<~text
      ちょうどでなければゴールできません
      #{player.position - map.max_square}マス戻ります。
      現在、#{map.max_square - (player.position - map.max_square)}マス目です。

      text
      player.position = map.max_square - (player.position - map.max_square)
      if player.position < map.max_square
       map.disp_player_square(player)
      end
    elsif player.position == map.max_square
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

      computer.position += @number_the_dice
      if computer.position < map.max_square
       map.disp_computer_square(computer)
       puts ""
      end
      puts "CPUは、#{computer.position}マス目にとまりました。"
      puts ""
  end

  #CPUの現在地を表示、ゴール判定
  def current_square_computer(map, computer)
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
      map.disp_computer_square(computer)
      puts <<~text
      現在、#{map.max_square - (computer.position - map.max_square)}マス目です。
      =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
      text
    elsif computer.position == map.max_square
      puts "CPUがゴールしました。あなたの負けです。"
    end
  end
  
end