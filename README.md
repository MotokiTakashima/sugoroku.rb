# すごろくゲーム

Ruby で動くすごろくゲームです
![スクリーンショット 2021-08-09 23 13 35](https://user-images.githubusercontent.com/78095577/128721281-c76a1683-398f-464d-b931-2a99d0ffce74.png)

## アプリ概要

すごろくの以下のルールを実装

1. プレイヤーがサイコロを振ります
2. 1~6 のランダムでサイコロの目が表示されます
3. 出たマス分、駒が移動します
4. 現在のマスを知らせます
5. 止まったマスにギミックがあれば表示され、指定されたマスに移動します
6. CPU も同じ処理をします
7. 先にゴールのマスに止まった方が勝ちです

＊＊Ruby のみで作成したアプリとなります＊＊

- 機能 1 サイコロを振り 1 から 6 がランダムで出力されます

- 機能 2 出力された数字の駒が表示される
  ![スクリーンショット 2021-08-09 23 12 09](https://user-images.githubusercontent.com/78095577/128721524-b318dd37-257b-4b67-a64d-b15df8aff479.png)

- 機能 3 止まったマスにギミックがあれば表示され、指定されたマスに移動する
  ![スクリーンショット 2021-08-09 23 12 42](https://user-images.githubusercontent.com/78095577/128721190-3497c329-09f5-4087-a97f-8bd9e7189058.png)

- 機能 4 ゴールマスにぴったり止まらなかったら、越えた分だけ戻ります
  ![スクリーンショット 2021-08-09 22 57 42](https://user-images.githubusercontent.com/78095577/128719376-796a5cfa-221f-479e-b11e-b12943242a79.png)

- 機能 5 現在止まってるマスに駒が表示される
  ![スクリーンショット 2021-08-09 23 06 58](https://user-images.githubusercontent.com/78095577/128719941-ed43e5a1-d186-41bb-90f6-9c78d7edf49e.png)

- 機能 6 プレイヤーが先にゴールをしたら途中で処理を中断します

## 使い方

1. ターミナルで実行。アプリのディレクトリ上で'ruby main.rb'で実行
2. 画面のメッセージに従い、ゲームを進行
   ![画面収録](https://user-images.githubusercontent.com/78095577/128617705-1799cd8c-d6e4-4245-9831-aa2a5f374574.gif)

## インストール

```
$ git clone https://github.com/MotokiTakashima/sugoroku.rb.git
$ cd sugoroku.rb
$ ruby main.rb
```

## ライセンス

This project is licensed free.  
ご自由にご利用ください
