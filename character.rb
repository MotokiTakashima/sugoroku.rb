require_relative "dice"
class Character

  attr_reader :dice_number, :position, :name

  def initialize(name)
    @position = 0
    @dice_number = 0
    @name = name
  end

  def character_position
    @position += @dice_number
  end

  def back_position(map)
    @position = map.max_square - (@position - map.max_square)
  end

  def change_position
    case @position
    when 1
      @position += 2
    when 3
      @position -= 2
    when 5
      @position -= 5
    when 7
      @position += 2
    when 10
      @position += 5
    when 14
      @position -= 7
    when 17
      @position -= 3
    when 20
      @position -= 20
    when 26
      @position -= 26
    when 28
      @position -= 10
    when 29
      @position -= 29
    end
  end
end