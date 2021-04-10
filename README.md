# すごろくゲーム

Ruby で動くすごろくゲームです

## アプリ概要

すごろくの以下のルールを実装
1,プレイヤーがサイコロを振ります
2,1~6 のランダムでサイコロの目が表示されます
3,出たマス分、駒が移動します
4,現在のマスを知らせます
5,止まったマスにギミックがあれば表示され、指定されたマスに移動します
6,先にゴールのマスに止まった方が勝ちです

＊＊Ruby のみで作成したアプリとなります＊＊

機能 1 サイコロを振り 1 から 6 がランダムで出力されます
機能 2 指示した以外の文字を入力すると再入力を促す機能を実装
機能 3 出力された数字の駒が表示される
機能 3 現在止まってるマスに駒が表示される
機能 4 止まったマスにギミックがあれば表示され、指定されたマスに移動する
機能 5 ゴールマスにぴったり止まらなかったら、越えた分だけ戻ります
機能 6 プレイヤーが先にゴールをしたら途中で処理を中断します

## 使い方

1, ターミナルで実行。アプリのディレクトリ上で'ruby main.rb'で実行
2, 画面のメッセージに従い、ゲームを進行

## インストール

```
$ git clone https://github.com/MotokiTakashima/sugoroku.rb.git
$ cd card_game
$ ruby main.rb
```

## 作者

もときち

## ライセンス

This project is licensed free.  
ご自由にご利用ください
