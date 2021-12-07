require_relative "character"

class Map
  attr_reader :max_square

  def initialize
    @max_square = 30
  end
  
  def activate_gimmick(character)
    case character.position
    when 1
      puts <<~text
             ---------------------------
             |      ==2マス進む==      |
             ---------------------------
           text
    when 3
      puts <<~text
             ---------------------------
             |      ==2マス戻る==      |
             ---------------------------
           text
    when 5
      puts <<~text
             ---------------------------
             |    ==スタートに戻る==   |
             ---------------------------
             スタートに戻りました。
           text
    when 7
      puts <<~text
             ---------------------------
             |     ==2マスすすむ==     |
             ---------------------------
           text
    when 10
      puts <<~text
             ---------------------------
             |     ==5マスすすむ==     |
             ---------------------------
           text
    when 14
      puts <<~text
             ---------------------------
             |      ==7マス戻る==      |
             ---------------------------
           text
    when 17
      puts <<~text
             ---------------------------
             |      ==3マス戻る==      |
             ---------------------------
           text
    when 20
      puts <<~text
             ---------------------------
             |    ==スタートに戻る==   |
             ---------------------------
             スタートに戻りました。
           text
    when 26
      puts <<~text
             ---------------------------
             |    ==スタートに戻る==   |
             ---------------------------
             スタートに戻りました。
           text
    when 28
      puts <<~text
             ---------------------------
             |     ==10マスに戻る==    |
             ---------------------------
           text
    when 29
      puts <<~text
             ---------------------------
             |    ==スタートに戻る==   |
             ---------------------------
             スタートに戻りました。
           text
    else
      puts <<~text
             -------------------------------------
             |     ==何も起こりませんでした==    |
             -------------------------------------
           text
    end
  end

  def change_position(character)
    case character.position
    when 1
      character.position = 3
    when 3
      character.position = 2
    when 5
      character.position = 0
    when 7
      character.position = 4
    when 10
      character.position = 15
    when 14
      character.position = 7
    when 17
      character.position = 14
    when 20
      character.position = 0
    when 26
      character.position = 0
    when 28
      character.position = 18
    when 29
      character.position = 0
    end
  end
end