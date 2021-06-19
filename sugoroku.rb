require_relative "map"
require_relative "player"
require_relative "computer"

class Sugoroku

  def start

    @map = Map.new
    @dice = Dice.new
    @player = Player.new("プレイヤー")
    @computer = Computer.new("CPU")

    start_informaition

    loop do

      play_user(@player)
      break if @player.position == @map.max_square
      activated_gimmick(@player)

      play_user(@computer)
      break if @computer.position == @map.max_square
      activated_gimmick(@computer)

      show_map

    end
  end

  def make_judgment
    if @player.position == @map.max_square
      goal_informaition
      puts "ゴールしました！！！あなたの勝ちです！！"
      puts ""
    elsif @computer.position == @map.max_square
      goal_informaition
      puts "CPUがゴールしました。あなたの負けです。"
      puts ""
    end
  end

  private

  def start_informaition
    puts <<~text
           ----------------------------------
           |                                |
           |         すごろくゲーム         |
           |                                |
           ----------------------------------
           ゴールまで#{@map.max_square}マスです
         text
  end

  def goal_informaition
    puts <<~text
           ---------------------------
           |                        |
           |        ==GOAL!==       |
           |                        |
           ---------------------------

         text
  end

  
  def move_forward(character)
    puts <<~text
    サイコロの目は#{character.dice_number}です。
    #{character.dice_number}マス進みます。
    
    text
    character.character_position
    if character.position < @map.max_square
      puts ""
      puts "#{character.position}マス目にとまりました。"
    elsif character.position > @map.max_square
      puts "出た目の数がゴールを#{character.position - @map.max_square}マス分超えました。"
    end
  end
  
  def show_square(character)
    if character.position < @map.max_square
      change_position(character)
      puts <<~text
      現在#{character.name}は、#{character.position}マス目です。
      
      text
    elsif character.position > @map.max_square
      puts <<~text
      ちょうどでなければゴールできません
      #{character.position - @map.max_square}マス戻ります。
      text
      character.back_position(@map)
      puts <<~text
      現在、#{character.position}マス目です。
      
      text
    end
  end
  
  def show_map
    puts "-:-:-:-:-:-:-:-:-:-:-:-現在のコマの位置-:-:-:-:-:-:-:-:-:-:-:-:-:-:"
    puts ""
    puts "プレイヤー：■  CPU:▲ "
           @player.disp_square(@map)
           @computer.disp_square(@map)
    puts ""
    puts "-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:-:"
  end
  
  def play_user(character)
    character.roll_dice(@dice)
    move_forward(character)
  end
  
  def activated_gimmick(character)
    @map.activate_gimmick(character)
    show_square(character)
  end
  
  def change_position(character)
    case character.position
    when 1
      character.position += 2
    when 3
      character.position -= 2
    when 5
      character.position -= 5
    when 7
      character.position += 2
    when 10
      character.position += 5
    when 14
      character.position -= 7
    when 17
      character.position -= 3
    when 20
      character.position -= 20
    when 26
      character.position -= 26
    when 28
      character.position -= 10
    when 29
      character.position -= 29
    end
  end
end