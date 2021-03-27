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

      me += the_dice_roll
      puts "今、#{me}マス目です。"
      #ギミックを表示させるメソッドを追加
      advance_the_piece(me)
    end
  end
  
  #ギミックを表示
  def advance_the_piece(me)
    if me == 1
      puts "*=*=2マスすすむ=*=*"
      me += 2
    elsif me == 3
      puts "*=*=２マス戻る=*=*"
      me -= 2
    elsif me == 5
      puts "*=*=スタートに戻る=*=*"
      me -= 5
    elsif me == 7
      puts "*=*=2マスすすむ=*=*"
      me += 2
    elsif me == 10
      puts "*=*=9マスすすむ！=*=*"
      me += 9
    elsif me == 14
      puts "*=*=７マス戻る=*=*"
      me -= 7
    elsif me == 17
      puts "*=*=3マス戻る=*=*"
      me -= 3
    elsif me == 20
      puts "*=*=スタートに戻る=*=*"
      me -= 20
    elsif me == 26
      puts "*=*=スタートに戻る=*=*"
      me -= 26
    elsif me == 28
      puts "*=*=10マス戻る！=*=*"
      me -= 10
    elsif me == 29
      puts "*=*=スタートに戻る！=*=*"
      me -= 29
    end
    puts "現在#{me}マスです。"
  end
  
  #残りのマスを表示する
  def remaining_masu(me, masu)
    if me < 0 || me == 0 
      puts "ゴールしました！"
    else
      puts "残りのマス目は#{masu - me}です"
    end
  end
  
  masu = 30
  
  disp_start(30)
  roll_the_dice(masu)
  advance_the_piece(me)