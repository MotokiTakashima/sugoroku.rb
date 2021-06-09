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
      puts "ゴールしました！！！あなたの勝ちです！！"
    elsif @computer.position == @map.max_square
      puts "CPUがゴールしました。あなたの負けです。"
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
    character.roll_dice
    @dice.disp_dice(character)
    character.move_forward(@map)
  end

  def activated_gimmick(chracter)
    @map.activate_gimmick(chracter)
    chracter.show_square(@map)
  end

end