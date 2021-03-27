require "pry"

 def disp_start(masu)
   puts <<~text
    -----------すごろくゲーム------------
    すごろくゲームをしよう！
    ゴールまで#{masu}マスです。

    text
  end
  
  
  #サイコロを振る
  def roll_the_dice(masu)
    me = 0
    while me < masu
      print "サイコロを振ってください (エンターキーをクリック)"
      gets.to_i
      the_dice_roll = rand(1..6)
      me += the_dice_roll
      advance_trout = me 
      if the_dice_roll == 1
        puts <<~text
        
        ---------
        |       |
        |   *   |
        |       |
        ---------
        
        text
      elsif the_dice_roll == 2
        puts <<~text
        
        ---------
        | *     |
        |       |
        |     * |
        ---------
        
        text
      elsif the_dice_roll == 3
        puts <<~text
        
        ---------
        | *     |
        |   *   |
        |     * |
        ---------
        
        text
      elsif the_dice_roll == 4
        puts <<~text
        
        ---------
        | *   * |
        |       |
        | *   * |
        ---------
        
        text
      elsif the_dice_roll == 5
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
      puts <<~text
      サイコロの目は#{the_dice_roll}です。
      #{the_dice_roll}マス進みます。
      
      text
      puts "今、#{advance_trout}マス目です。"
    end
  end
  
  
  #ギミックを表示
  def advance_the_piece(advance_trout)
    if advance_trout == 1
      puts "*=*=2マスすすむ=*=*"
      advance_trout += 2
    elsif advance_trout == 3
      puts "*=*=２マス戻る=*=*"
      advance_trout -= 2
    elsif advance_trout == 5
      puts "*=*=スタートに戻る=*=*"
      advance_trout -= 5
    elsif advance_trout == 7
      puts "*=*=2マスすすむ=*=*"
      advance_trout += 2
    elsif advance_trout == 10
      puts "*=*=9マスすすむ！=*=*"
      advance_trout += 9
    elsif advance_trout == 14
      puts "*=*=７マス戻る=*=*"
      advance_trout -= 7
    elsif advance_trout == 17
      puts "*=*=3マス戻る=*=*"
      advance_trout -= 3
    elsif advance_trout == 20
      puts "*=*=スタートに戻る=*=*"
      advance_trout -= 20
    elsif advance_trout == 26
      puts "*=*=スタートに戻る=*=*"
      advance_trout -= 26
    elsif advance_trout == 28
      puts "*=*=10マス戻る！=*=*"
      advance_trout -= 10
    elsif advance_trout == 29
      puts "*=*=スタートに戻る！=*=*"
      advance_trout -= 29
    end
    puts "現在#{advance_trout}マスです。"
  end
  
  #残りのマスを表示する
  def remaining_masu(me, masu)
    if me > 0 
      puts "残りのマス目は#{masu - me}です"
    elsif
      puts "ゴールしました！"
    end
  end

masu = 30

disp_start(30)
roll_the_dice(masu)
advance_the_piece(advance_trout)