# README

アプリケーション名：Otarue

アプリケーション概要：北海道小樽市の観光サイトを体に作成。

URL：https://otarue-33947.herokuapp.com/

利用方法：WEBデザイン主体のHP。ユーザー側でアクション実行可能なページは購入機能・問合せ機能の２点。

目指した課題解決：小樽市への観光を検討している人へ、どのような経路で巡っていけば良いかを悩む、という課題を解決する為に作成。

要件：購入機能/商品の購入ができる

実装した機能：
購入機能
https://i.gyazo.com/298f3e6a482f0996d9b8117898a77a61.gif

問合せ機能
https://i.gyazo.com/9a94c2dfe251b91966b999a850670c23.gif

実装予定の機能：<br>
index：<br>
背景動画を数秒ごとに変化（動画を3つ用意）<br>
indexのみヘッダーの色を変化<br><br>

about：<br>
画像を数秒ごとに変化（画像を6つ用意）<br>
文言を変更<br><br>

map：<br>
文言を変更<br>
小樽駅と車の箇所の不透明度を下げる（改装中の為）<br>
南小樽を選んだ際、すぐにオルゴール堂が表示されるので、駅から近い場所の候補を選べるようにする<br>
いいね有無を保存できるようにする<br><br>
order：<br>
レイアウトを調整する<br>
購入前にポップアップを表示する（料金確認）<br>
個数を選択出来るようにする<br>
送料を付ける<br>
2000円以上の購入で送料無料とする<br>
購入者でも購入情報が視認出来るようにする<br><br>

all：<br>
開く時が非常に重いので、可能であれば改善する<br>
SCSSのリファクタリングを実施する<br>
その他のコードもリファクタリング箇所があれば実施する<br>
処理を行っている箇所はコメントアウトで説明する<br>
Vue.jsに切り替えていく<br>
bootstrapを導入して、レイアウトを整える<br>
レスポンシブに対応させる<br><br>

データベース設計：
ER図
https://i.gyazo.com/b410be995796c2813eee890ec4b527e0.png

ローカルでの動作方法：
ターミナル上で「rails s」を実行
使用言語：HTML/CSS/JavaScript/Ruby/Ruby on Rails/MySQL/Visual Studio Code
