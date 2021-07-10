require_relative "character"

class Map
  attr_reader :max_square, :gimmick

  def initialize
    @max_square = 30
    @gimmick = [{ square: 1, gimmick_name: "==2マスすすむ==", position: 2 },
                { square: 3, gimmick_name: "==2マス戻る==", position: -2 },
                { square: 5, gimmick_name: "==5マス戻る==", position: -5 },
                { square: 7, gimmick_name: "==3マス戻る==", position: -3 },
                { square: 10, gimmick_name: "==5マスすすむ==", position: 5 },
                { square: 14, gimmick_name: "==7マス戻る==", position: -7 },
                { square: 17, gimmick_name: "==3マス戻る==", position: -3 },
                { square: 20, gimmick_name: "==スタートに戻る==", position: -20 },
                { square: 26, gimmick_name: "==スタートに戻る==", position: -26 },
                { square: 28, gimmick_name: "==10マス戻る==", position: -10 },
                { square: 29, gimmick_name: "==スタートに戻る==", position: -29 },
              ]
  end
  
  def activate_gimmick(character)
    case character.position
    when 1
      puts "#{@gimmick[0][:gimmick_name]}"
    when  3
      puts "#{@gimmick[1][:gimmick_name]}"
    when 5
       puts "#{@gimmick[2][:gimmick_name]}"
    when 7
       puts "#{@gimmick[3][:gimmick_name]}"
    when 10
       puts "#{@gimmick[4][:gimmick_name]}"
    when 14
       puts "#{@gimmick[5][:gimmick_name]}"
    when 17
       puts "#{@gimmick[6][:gimmick_name]}"
    when 20
       puts "#{@gimmick[7][:gimmick_name]}"
    when 26
       puts "#{@gimmick[8][:gimmick_name]}"
    when 28
       puts "#{@gimmick[9][:gimmick_name]}"
    when 29
       puts "#{@gimmick[10][:gimmick_name]}"
    else
      puts "==何も起こりませんでした=="
    end
  end
end