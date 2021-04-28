require "./player"
require "./computer"
require "./character"

class Map < Character
  attr_reader :max_square

  def initialize(max_square)
    @max_square = max_square
  end
  
  def activate_gimmick(character)
       if character.position == 1
        puts <<~text
         ---------------------------
         |     ==2マスすすむ==     |
         ---------------------------
         text
        character.position += 2
       elsif character.position == 3
        puts <<~text
         ---------------------------
         |      ==2マス戻る==      |
         ---------------------------
         text
        character.position -= 2
       elsif character.position == 5
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        character.position -= 5
       elsif character.position == 7
        puts <<~text
         ---------------------------
         |     ==2マスすすむ==     |
         ---------------------------
         text
        character.position += 2
       elsif character.position == 10
        puts <<~text
         ---------------------------
         |     ==5マスすすむ==     |
         ---------------------------
         text
        character.position += 5
       elsif character.position == 14
        puts <<~text
         ---------------------------
         |      ==7マス戻る==      |
         ---------------------------
         text
        character.position -= 7
       elsif character.position == 17
        puts <<~text
         ---------------------------
         |      ==3マス戻る==      |
         ---------------------------
         text
        character.position -= 3
       elsif character.position == 20
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        character.position -= 20
       elsif character.position == 26
        puts <<~text
         ---------------------------
         |    ==スタートに戻る==   |
         ---------------------------
         スタートに戻りました。
         text
        character.position -= 26
       elsif character.position == 28
        puts <<~text
         ---------------------------
         |     ==10マスに戻る==    |
         ---------------------------
         text
        character.position -= 10
       elsif character.position == 29
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