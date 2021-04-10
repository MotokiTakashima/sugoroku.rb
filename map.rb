require "./player"
require "./computer"

class Map
  attr_reader :masu

  def initialize(masu:)
    @masu = masu
  end
  
  #プレイヤーの現在地
  def disp_player_masu(player)
    puts "□ " * (player.me - 1) + "=■= " + "□ " * (@masu - player.me)
  end

  #CPUの現在地
  def disp_computer_masu(computer)
    puts "□ " * (computer.cpu - 1) + "=▲= " + "□ " * (@masu - computer.cpu)
  end

  #プレイヤーが止まったマスのギミック
  def active_gimikku_player(player)
       if player.me == 1
        puts <<~text
         ---------------------------
         |     ==2マスすすむ==     |
         ---------------------------
         text
        player.me += 2
        disp_player_masu(player)
       elsif player.me == 3
        puts <<~text
         ---------------------------
         |      ==2マス戻る==      |
         ---------------------------
         text
        player.me -= 2
        disp_player_masu(player)
       elsif player.me == 5
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        player.me -= 5
       elsif player.me == 7
        puts <<~text
         ---------------------------
         |     ==2マスすすむ==     |
         ---------------------------
         text
        player.me += 2
        disp_player_masu(player)
       elsif player.me == 10
        puts <<~text
         ---------------------------
         |     ==5マスすすむ==     |
         ---------------------------
         text
        player.me += 5
        disp_player_masu(player)
       elsif player.me == 14
        puts <<~text
         ---------------------------
         |      ==7マス戻る==      |
         ---------------------------
         text
        player.me -= 7
        disp_player_masu(player)
       elsif player.me == 17
        puts <<~text
         ---------------------------
         |      ==3マス戻る==      |
         ---------------------------
         text
        player.me -= 3
        disp_player_masu(player)
       elsif player.me == 20
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        player.me -= 20
       elsif player.me == 26
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        player.me -= 26
       elsif player.me == 28
        puts <<~text
         ---------------------------
         |     ==10マスに戻る==    |
         ---------------------------
         text
        player.me -= 10
        disp_player_masu(player)
       elsif player.me == 29
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        player.me -= 29
       end
  end

  #CPUが止まったマスのギミック
  def active_gimikku_computer(computer)
       if computer.cpu == 1
        puts <<~text
         ---------------------------
         |     ==2マスすすむ==     |
         ---------------------------
         text
        computer.cpu += 2
        disp_computer_masu(computer)
       elsif computer.cpu == 3
        puts <<~text
         ---------------------------
         |      ==2マス戻る==      |
         ---------------------------
         text
        computer.cpu -= 2
        disp_computer_masu(computer)
       elsif computer.cpu == 5
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        computer.cpu -= 5
       elsif computer.cpu == 7
        puts <<~text
         ---------------------------
         |     ==2マスすすむ==     |
         ---------------------------
         text
        computer.cpu += 2
        disp_computer_masu(computer)
       elsif computer.cpu == 10
        puts <<~text
         ---------------------------
         |     ==5マスすすむ==     |
         ---------------------------
         text
        computer.cpu += 5
        disp_computer_masu(computer)
       elsif computer.cpu == 14
        puts <<~text
         ---------------------------
         |      ==7マス戻る==      |
         ---------------------------
         text
        computer.cpu -= 7
        disp_computer_masu(computer)
       elsif computer.cpu == 17
        puts <<~text
         ---------------------------
         |      ==3マス戻る==      |
         ---------------------------
         text
        computer.cpu -= 3
        disp_computer_masu(computer)
       elsif computer.cpu == 20
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        computer.cpu -= 20
       elsif computer.cpu == 26
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        computer.cpu -= 26
       elsif computer.cpu == 28
        puts <<~text
         ---------------------------
         |     ==10マスに戻る==    |
         ---------------------------
         text
        computer.cpu -= 10
        disp_computer_masu(computer)
       elsif computer.cpu == 29
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        computer.cpu -= 29
       end
  end
end

