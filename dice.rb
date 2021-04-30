require "./player"
require "./computer"

class Dice

  def disp_dice(character)
    if character.number_dice == 1
      puts <<~text
             ---------
             |       |
             |   *   |
             |       |
             ---------            
           text
    elsif character.number_dice == 2
      puts <<~text             
             ---------
             | *     |
             |       |
             |     * |
             ---------            
           text
    elsif character.number_dice == 3
      puts <<~text           
             ---------
             | *     |
             |   *   |
             |     * |
             ---------           
           text
    elsif character.number_dice == 4
      puts <<~text         
             ---------
             | *   * |
             |       |
             | *   * |
             ---------           
           text
    elsif character.number_dice == 5
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