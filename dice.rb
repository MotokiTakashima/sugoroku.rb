require_relative "character"
class Dice

  def disp_dice(character)
    case character.dice_number
    when 1
      puts <<~text
             ---------
             |       |
             |   *   |
             |       |
             ---------            
           text
    when 2
      puts <<~text             
             ---------
             | *     |
             |       |
             |     * |
             ---------            
           text
    when 3
      puts <<~text           
             ---------
             | *     |
             |   *   |
             |     * |
             ---------           
           text
    when 4
      puts <<~text         
             ---------
             | *   * |
             |       |
             | *   * |
             ---------           
           text
    when 5
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