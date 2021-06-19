require_relative "character"

class Map
  attr_reader :max_square

  @gimmick = [{ square: 1, position: 2 },
              { square: 3, position: -2 },
              { square: 5, position: -5 },
              { square: 7, position: -3 },
              { square: 10, position: 5 },
              { square: 14, position: -7 },
              { square: 17, position: -3 },
              { square: 20, position: -20 },
              { square: 26, position: -26 },
              { square: 28, position: -10 },
              { square: 29, position: -29 },
            ]

  def initialize
    @max_square = 30
  end
  
  def activate_gimmick(character)
    case character.position
    when 1
      puts <<~text
       ---------------------------
       |     ==2マスすすむ==     |
       ---------------------------
       text
       
    when  3
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
end