## おうち時間〜spendtime〜

![image](https://github.com/Orizin-code/spend_time_app/blob/master/public/readme_images/TOPPAGE.png?raw=true)

## URL
- アプリURL:https://spendtime01.herokuapp.com/
  - ゲストログインからアクセスするとアカウント作成は不要です。

## アプリ概要
「自宅での時間の過ごし方」を共有するコミュニティアプリです。
- 記事の投稿・編集・削除機能
- 投稿された内容へのいいね・コメント・編集機能
- 記事のタイトルまたは内容の検索機能
- 名前・パスワードのアカウント編集・アカウント削除機能（ゲストログイン時は編集・削除不可）
- お問い合わせフォーム機能(非ログイン時でもお問い合わせ可)

## 制作背景
私には２歳の娘がおり、コロナウィルスの関係で子供と遊ぶ時間を自宅で過ごすことが多いことがきっかけとなります。  
娘にはいろんな経験をさせてあげたいという思いから色々な遊びを考えてはいますが、ネタも尽きてしまい周りの知り合いの意見なども参考にするようになりました。  
そんな中で私のように自宅での時間の使い方や過ごし方に困っている人がいるのではないかと考え今回のコミュニティアプリを制作しました。  
シンプルな構成と画面の見やすさが特徴になります。  

## 工夫した点
1.レイアウト関連  
- 長い文章を使わないことで、説明書がなくても直感的に誰でも操作ができるよう制作。
- フロントのフレームワークを利用しないことで、型にはまらないオリジナルのデザインに実装。
- スマホでの利用率が高いことを考え、文字サイズは見やすく設定  
2.お問合せフォーム  
- Userテーブルと関連付けをあえてしないことで非ログイン時でもアクセスできるようにしました。  
3.ゲストユーザーは、編集・削除できないように設定  
- 「更新」や「削除」を行おうとしても、フラッシュメッセージが表示されるよう実装   
4.実務でのチーム開発を意識した開発  
- Git, GitHub を用いたソース管理
- Projects のカンバン方式でタスクを管理
- issue・ブランチをタスクごとに作成し、作業を進めました  
5.知り合いに利用してもらいフィードバックをもらいました
- 投稿詳細ページから投稿一覧へ戻る際、毎回１ページ目に戻ってしまうのが使いづらいと意見を頂いたため前回開いていたページに戻るよう修正。  

## 使用技術
- 言語：Ruby (2.7.3)
- フレームワーク：Ruby on Rails (6.1.4)
- フロントエンド：HTML/CSS
- テスト(Rspec/factory_bot)
- DB：PostgreSQL
- インフラ：Heroku(ステージング環境+本番環境)
- ソースコード管理：GitHub

## ER図
![image](https://github.com/Orizin-code/spend_time_app/blob/master/public/readme_images/ER%E5%9B%B3.png?raw=true)

## 投稿一覧画面
![image](https://github.com/Orizin-code/spend_time_app/blob/master/public/readme_images/postpage.png?raw=true)
- キーワード検索することで投稿の絞り込みができます。
- Good!ボタンはいいね機能となります。
- 投稿された記事の詳細ボタンを押すと投稿詳細画面へ移動します。

## 投稿詳細画面
![image](https://github.com/Orizin-code/spend_time_app/blob/master/public/readme_images/showpage.png?raw=true)
- 詳細画面のイメージです。
- 「投稿一覧へ」を押すと投稿一覧画面へ戻ります。
- 「コメントを投稿する」からコメントを入力し、「書き込む」を押すことで画面上の投稿に対してコメントができます。

## コメント画面
![image](https://github.com/Orizin-code/spend_time_app/blob/master/public/readme_images/show-comment.png?raw=true)
- 投稿詳細画面をそのまま下へスクロールした画面遷移となります。

## 管理者画面
![image](https://github.com/Orizin-code/spend_time_app/blob/master/public/readme_images/adminuser.png?raw=true)
- Admin Comment(管理者のコメント)
- コメント（ユーザーの投稿に対するコメント）
- ユーザー（ユーザーアカウント情報）
- 投稿（ユーザーの投稿内容）
- 管理者ユーザー（管理者のアカウント情報）

## 追加予定の機能
- 個人チャット機能
- インフォメーションのテーブル作成
- コメントのカウント機能
- CI/CDツールの導入
- お気に入り保存機能
- TwitterやFacebookでのログイン機能
