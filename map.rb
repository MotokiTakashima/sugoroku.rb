require "./player"
require "./computer"
require "./character"

class Map < Character
  attr_reader :max_square

  def initialize(max_square)
    @max_square = max_square
  end
  
  def activate_gimmick(character)
    case character.position
    when 1
      puts <<~text
       ---------------------------
       |     ==2マスすすむ==     |
       ---------------------------
       text
      character.position += 2
    when  3
      puts <<~text
       ---------------------------
       |      ==2マス戻る==      |
       ---------------------------
       text
      character.position -= 2
    when 5
       puts <<~text
       ---------------------------
       |    ==スタートに戻る==   |
       ---------------------------
       スタートに戻りました。
       text
      character.position -= 5
    when 7
       puts <<~text
       ---------------------------
       |     ==2マスすすむ==     |
       ---------------------------
      text
      character.position += 2
    when 10
       puts <<~text
       ---------------------------
       |     ==5マスすすむ==     |
       ---------------------------
      text
      character.position += 5
    when 14
       puts <<~text
       ---------------------------
       |      ==7マス戻る==      |
       ---------------------------
       text
      character.position -= 7
    when 17
       puts <<~text
       ---------------------------
       |      ==3マス戻る==      |
       ---------------------------
       text
      character.position -= 3
    when 20
       puts <<~text
       ---------------------------
       |    ==スタートに戻る==   |
       ---------------------------
       スタートに戻りました。
       text
      character.position -= 20
    when 26
       puts <<~text
       ---------------------------
       |    ==スタートに戻る==   |
       ---------------------------
       スタートに戻りました。
       text
      character.position -= 26
    when 28
       puts <<~text
       ---------------------------
       |     ==10マスに戻る==    |
       ---------------------------
       text
      character.position -= 10
    when 29
       puts <<~text
       ---------------------------
       |    ==スタートに戻る==   |
       ---------------------------
       スタートに戻りました。
       text
      character.position -= 29
    end
  end
end