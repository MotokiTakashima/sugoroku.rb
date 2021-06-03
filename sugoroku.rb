require_relative "map"
require_relative "player"
require_relative "computer"
require_relative "dice"
require_relative "character"

class Sugoroku

  def start

    @map = Map.new
    @dice = Dice.new
    @player = Player.new(0, 0, "プレイヤー")
    @computer = Computer.new(0, 0, "CPU")

    start_informaition

    while @player.position < @map.max_square
      #プレイヤーのサイコロを振らす処理
      @player.roll_dice
      #サイコロの出目の表示
      @dice.disp_dice(@player)
      #プレイヤーの進んだ位置を表示
      @player.move_forward(@map)
      #プレイヤーが止まったマスのギミック
      @map.activate_gimmick(@player)
      #プレイヤーの現在地を表示
      @player.show_square(@map)
      #ゴール判定
      if @player.position == @map.max_square
       make_judgment
       break
      end
      #CPUがサイコロを振る
      @computer.roll_dice
      @dice.disp_dice(@computer)
      #CPUが進んだマスを表示
      @computer.move_forward(@map)
      #CPUが止まったマスのギミック
      @map.activate_gimmick(@computer)
      #CPUの現在地を表示
      @computer.show_square(@map)
      if @computer.position == @map.max_square
        make_judgment
        break
      end
      show_map
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

  def make_judgment
    if @player.position == @map.max_square
      puts "ゴールしました！！！あなたの勝ちです！！"
    elsif @computer.position == @map.max_square
      puts "CPUがゴールしました。あなたの負けです。"
    end
  end

end