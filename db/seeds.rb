# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 管理者用メールアドレスを設定
admin_email = "admin@example.com"
user = "マスター"
email = "test@example.com"
password = "password"

# 初期データ
ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")

# 初期ユーザーアカウント
User1 = User.create!(username: "山本", email: "yamamoto@example.com", password: "password", password_confirmation: "password")
User2 = User.create!(username: "菊池", email: "kikuchi@example.com", password: "password", password_confirmation: "password")
User3 = User.create!(username: "チョコ", email: "choco@example.com", password: "password", password_confirmation: "password")
User4 = User.create!(username: "田口", email: "taguchi@example.com", password: "password", password_confirmation: "password")
User5 = User.create!(username: "KENTA", email: "kenta@example.com", password: "password", password_confirmation: "password")
User6 = User.create!(username: "森本", email: "morimoto@example.com", password: "password", password_confirmation: "password")
User7 = User.create!(username: "笹部", email: "sasabe@example.com", password: "password", password_confirmation: "password")
User8 = User.create!(username: "NoName", email: "noname@example.com", password: "password", password_confirmation: "password")
User9 = User.create!(username: "シェフ", email: "food@example.com", password: "password", password_confirmation: "password")

puts "usersテーブルにデータ投入完了"

# 初期投稿
Post1 = User1.posts.create!(title: "映画鑑賞", content: "私は家で映画鑑賞するのが趣味です。「ワイルドスピード」や「KINGDOM」が特におすすめです！")
Post2 = User2.posts.create!(title: "オンライン飲み会", content: "お酒を飲むのが好きなので皆さんオンラインで一緒にお酒を飲みませんか？")
Post3 = User3.posts.create!(title: "おすすめゲーム", content: "最近Apexというゲームにハマっております。どなたか一緒に遊びませんか？")
Post4 = User4.posts.create!(title: "アニメ大好き", content: "おすすめのアニメは鬼滅の刃や転スラです！他に何かいいのがあれば共有してください！")
Post5 = User5.posts.create!(title: "子供との遊び", content: "２歳の子供と最近水塗り絵で遊んでおります。水しか使わないため汚すリスクも少ないのでおすすめです！")
Post6 = User6.posts.create!(title: "家庭菜園はじめました", content: "ゴーヤを育てて自分で食べております。不思議と愛着が沸いているせいかより美味しく感じます。他にも種類を増やしていこうと思っているのでおすすめなどあれば教えてください！")
Post7 = User7.posts.create!(title: "ヨガ", content: "自宅でヨガをしております。ストレス解消になりますし体も柔らかくなります。ぜひ皆さんもやってみてください。")
Post8 = User8.posts.create!(title: "DIYをやっています", content: "ここ最近作ったのが傘立てとテーブルを作りました！自分が作ったテーブルでご飯を食べたりして自己満足しております。")
Post9 = User9.posts.create!(title: "お菓子作り", content: "家族みんなでお菓子を作っています。みんなで作ることで楽しい時間が過ごせます！最近作ったのがプリンとマカロンです！")
Post10 = User3.posts.create!(title: "手編みマフラー", content: "マフラーを作ってみました！手編みマフラーを作っていたら時間があっという間に過ぎています。次はランチョンマットを作ろうと思っています！")

puts "初期投稿データ投入完了"

Post1.likes.create!(user_id: User1.id)
Post3.likes.create!(user_id: User1.id)
Post5.likes.create!(user_id: User1.id)

puts "初期いいねデータ投入完了"

# ログイン時に使用するアカウント
User.create!(username: user, email: email, password: password)

AdminUser.find_or_create_by!(email: admin_email) do |adminuser|
  adminuser.password = password
  puts "管理者ユーザーの初期データインポートに成功しました。"
end
