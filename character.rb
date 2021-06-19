require_relative "dice"
class Character

  attr_reader :dice_number, :name
  attr_accessor :position

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

end