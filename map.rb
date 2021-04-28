require "./player"
require "./computer"
require "./character"

class Map
  attr_reader :max_square

  def initialize(max_square)
    @max_square = max_square
  end
  
  def activate_gimmick_player(player, map)
       if player.position == 1
        puts <<~text
         ---------------------------
         |     ==2マスすすむ==     |
         ---------------------------
         text
        player.position += 2
        player.disp_square(map)
       elsif player.position == 3
        puts <<~text
         ---------------------------
         |      ==2マス戻る==      |
         ---------------------------
         text
        player.position -= 2
        player.disp_square(map)
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
        player.disp_square(map)
       elsif player.position == 10
        puts <<~text
         ---------------------------
         |     ==5マスすすむ==     |
         ---------------------------
         text
        player.position += 5
        player.disp_square(map)
       elsif player.position == 14
        puts <<~text
         ---------------------------
         |      ==7マス戻る==      |
         ---------------------------
         text
        player.position -= 7
        player.disp_square(map)
       elsif player.position == 17
        puts <<~text
         ---------------------------
         |      ==3マス戻る==      |
         ---------------------------
         text
        player.position -= 3
        player.disp_square(map)
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
      player.disp_square(map)
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

  def activate_gimmick_computer(computer, map)
       if computer.position == 1
        puts <<~text
         ---------------------------
         |     ==2マスすすむ==     |
         ---------------------------
         text
        computer.position += 2
      computer.disp_square(map)
       elsif computer.position == 3
        puts <<~text
         ---------------------------
         |      ==2マス戻る==      |
         ---------------------------
         text
        computer.position -= 2
      computer.disp_square(map)
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
      computer.disp_square(map)
       elsif computer.position == 10
        puts <<~text
         ---------------------------
         |     ==5マスすすむ==     |
         ---------------------------
         text
        computer.position += 5
      computer.disp_square(map)
       elsif computer.position == 14
        puts <<~text
         ---------------------------
         |      ==7マス戻る==      |
         ---------------------------
         text
        computer.position -= 7
      computer.disp_square(map)
       elsif computer.position == 17
        puts <<~text
         ---------------------------
         |      ==3マス戻る==      |
         ---------------------------
         text
        computer.position -= 3
      computer.disp_square(map)
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
      computer.disp_square(map)
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

