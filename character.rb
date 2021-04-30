class Character

  attr_accessor :position
  attr_reader :number_dice

  def initialize(position, number_dice)
    @position = position
    @number_dice = number_dice
  end
end

