require "./map"
require "./player"
require "./computer"
require "./dice"
require "./character"

class Sugoroku

  def start(player, computer)

    build_map
    build_dice
    build_character
    build_player

    informaition

    while @player.position < @map.max_square && computer.position < @map.max_square
      #プレイヤーのサイコロを振らす処理
      @player.roll_dice
      #サイコロの出目の表示
      @dice.disp_dice(@player)
      #プレイヤーの進んだ位置を表示
      @player.move_forward(@map)
      #プレイヤーが止まったマスのギミック
      @map.activate_gimmick(@player)
      #プレイヤーの現在地を表示、ゴール判定
      @player.show_square(@map)
      if @player.position == @map.max_square
        break
      end
      #CPUがサイコロを振り、進んだマスを表示
      computer.roll_dice(@player, @map, @dice, computer)
      #CPUが止まったマスのギミック
      @map.activate_gimmick(computer)
      #CPUの現在地を表示、ゴール判定
      computer.show_square(@map)
    end
  end

  def informaition
    puts <<~text
           ----------------------------------
           |                                |
           |         すごろくゲーム         |
           |                                |
           ----------------------------------
           ゴールまで#{@map.max_square}マスです
         text
  end

  private

  def build_map
    @map = Map.new(30)
  end

  def build_dice
    @dice = Dice.new
  end

  def build_character
    @character = Character.new(0, 0)
  end

  def build_player
    @player = Player.new(0, 0)
  end
end