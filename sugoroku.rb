require_relative "map"
require_relative "player"
require_relative "computer"
require_relative "dice"
require_relative "character"

class Sugoroku

  def start

    @map = Map.new
    @dice = Dice.new
    @player = Player.new("プレイヤー")
    @computer = Computer.new("CPU")

    start_informaition

    loop do
      @player.roll_dice
      @dice.disp_dice(@player)
      @player.move_forward(@map)
      @map.activate_gimmick(@player)
      @player.show_square(@map)
      break if @player.position == @map.max_square
      @computer.roll_dice
      @dice.disp_dice(@computer)
      @computer.move_forward(@map)
      @map.activate_gimmick(@computer)
      @computer.show_square(@map)
      break if @computer.position == @map.max_square
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

end