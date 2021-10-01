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

## アプリ作成背景
私には２歳の娘がいます。  
コロナウィルスの関係で子供と遊ぶ時間を自宅で過ごすことが多いです。  
ただ娘にはいろんな経験をさせてあげたいという思いから、遊びのレパートリーを増やしたいと考え今回のコミュニティを作ろうと思い作成しました。  
シンプルな構成と画面の見やすさが特徴になります。  

## 工夫した点
説明書がなくても直感的に誰でも操作ができるよう作成しました。  
具体的にレイアウトは「シンプル」をコンセプトに長い文章は使わないよう意識しました。  
お問い合わせフォームは非ログイン時でもアクセスできるようにし、自分のアカウントを忘れたという方でもお問い合わせができるよう実装しました。  
実際に知り合いに利用していただき投稿詳細ページから投稿一覧へ戻る際、毎回１ページ目に戻ってしまうのが使いづらいと意見を頂いたため前回開いていたページに戻るよう修正いたしました。  
Githubはチーム開発を意識しGitflowを採用しました。

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
