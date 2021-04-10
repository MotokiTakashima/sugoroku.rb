class Dice

  attr_reader :number_the_dice

  #サイコロの出目の表示
  def disp_the_dice(number_the_dice)
    if number_the_dice == 1
      puts <<~text
             
             ---------
             |       |
             |   *   |
             |       |
             ---------
             
           text
    elsif number_the_dice == 2
      puts <<~text
             
             ---------
             | *     |
             |       |
             |     * |
             ---------
             
           text
    elsif number_the_dice == 3
      puts <<~text
             
             ---------
             | *     |
             |   *   |
             |     * |
             ---------
             
           text
    elsif number_the_dice == 4
      puts <<~text
             
             ---------
             | *   * |
             |       |
             | *   * |
             ---------
             
           text
    elsif number_the_dice == 5
      puts <<~text
             
             ---------
             | *   * |
             |   *   |
             | *   * |
             ---------
             
           text
    else
      puts <<~text
             
             ---------
             | *   * |
             | *   * |
             | *   * |
             ---------
             
           text
    end
  end
end