class Dice

  def disp_dice(dice_number)
    case dice_number
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