require "./player"
require "./computer"

class Map
  attr_reader :max_square

  def initialize(max_square)
    @max_square = max_square
  end
  
  #プレイヤーの現在地
  def disp_player_square(player)
    puts "□ " * (player.position - 1) + "=■= " + "□ " * (@max_square - player.position)
  end

  #CPUの現在地
  def disp_computer_square(computer)
    puts "□ " * (computer.position - 1) + "=▲= " + "□ " * (@max_square - computer.position)
  end

  #プレイヤーが止まったマスのギミック
  def activate_gimmick_player(player)
       if player.position == 1
        puts <<~text
         ---------------------------
         |     ==2マスすすむ==     |
         ---------------------------
         text
        player.position += 2
        disp_player_square(player)
       elsif player.position == 3
        puts <<~text
         ---------------------------
         |      ==2マス戻る==      |
         ---------------------------
         text
        player.position -= 2
        disp_player_square(player)
       elsif player.position == 5
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        player.position -= 5
       elsif player.position == 7
        puts <<~text
         ---------------------------
         |     ==2マスすすむ==     |
         ---------------------------
         text
        player.position += 2
        disp_player_square(player)
       elsif player.position == 10
        puts <<~text
         ---------------------------
         |     ==5マスすすむ==     |
         ---------------------------
         text
        player.position += 5
        disp_player_square(player)
       elsif player.position == 14
        puts <<~text
         ---------------------------
         |      ==7マス戻る==      |
         ---------------------------
         text
        player.position -= 7
        disp_player_square(player)
       elsif player.position == 17
        puts <<~text
         ---------------------------
         |      ==3マス戻る==      |
         ---------------------------
         text
        player.position -= 3
        disp_player_square(player)
       elsif player.position == 20
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        player.position -= 20
       elsif player.position == 26
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        player.position -= 26
       elsif player.position == 28
        puts <<~text
         ---------------------------
         |     ==10マスに戻る==    |
         ---------------------------
         text
        player.position -= 10
        disp_player_square(player)
       elsif player.position == 29
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        player.position -= 29
       end
  end

  #CPUが止まったマスのギミック
  def activate_gimmick_computer(computer)
       if computer.position == 1
        puts <<~text
         ---------------------------
         |     ==2マスすすむ==     |
         ---------------------------
         text
        computer.position += 2
        disp_computer_square(computer)
       elsif computer.position == 3
        puts <<~text
         ---------------------------
         |      ==2マス戻る==      |
         ---------------------------
         text
        computer.position -= 2
        disp_computer_square(computer)
       elsif computer.position == 5
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        computer.position -= 5
       elsif computer.position == 7
        puts <<~text
         ---------------------------
         |     ==2マスすすむ==     |
         ---------------------------
         text
        computer.position += 2
        disp_computer_square(computer)
       elsif computer.position == 10
        puts <<~text
         ---------------------------
         |     ==5マスすすむ==     |
         ---------------------------
         text
        computer.position += 5
        disp_computer_square(computer)
       elsif computer.position == 14
        puts <<~text
         ---------------------------
         |      ==7マス戻る==      |
         ---------------------------
         text
        computer.position -= 7
        disp_computer_square(computer)
       elsif computer.position == 17
        puts <<~text
         ---------------------------
         |      ==3マス戻る==      |
         ---------------------------
         text
        computer.position -= 3
        disp_computer_square(computer)
       elsif computer.position == 20
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        computer.position -= 20
       elsif computer.position == 26
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        computer.position -= 26
       elsif computer.position == 28
        puts <<~text
         ---------------------------
         |     ==10マスに戻る==    |
         ---------------------------
         text
        computer.position -= 10
        disp_computer_square(computer)
       elsif computer.position == 29
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        computer.position -= 29
       end
  end
end

