# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 管理者1
# Admin.create!(
#   email: "admin@admin.com",
#   password: "passw0rd"
# )

# ジャンル
# Genre.create!(
#   name: "ケーキ"
# )

# Genre.create!(
#   name: "プリン"
# )

# Genre.create!(
#   name: "焼き菓子"
# )

# Genre.create!(
#   name: "キャンディ"
# )

# 商品 ※もちろんベタ書きでもOK
# 5.times do |n|
#   Item.create!(
#     genre_id: 0,
#     name: "商品#{n + 1}",
#     introduction: "商品#{n + 1}の説明商品#{n + 1}の説明商品#{n + 1}の説明",
#     price: 100 * (n + 1),
#     is_active: true
#   )
# end

# 顧客 nが10以上なら、電話番号の桁数が増えますので注意。どうでもいいけど。
# また、5件に1件くらいは退会済みがあってもいいかなと思って。
# 全件消すときは、rails cでコンソールに入ってCustomer.delete_allでどうぞ。
# 5.times do |n|
#   Customer.create!(
#     last_name: "姓姓#{n}",
#     first_name: "名名#{n}",
#     last_name_kana: "セイセイセイ#{n}",
#     first_name_kana: "メイメイメイ#{n}",
#     email: "sei#{n}@testdata.com",
#     password: "passw0rd",
#     postal_code: "#{1500041 + n}",
#     address: "東京都渋谷区神南1丁目19-#{n} 
#       パークウェースクエア2 #{n + 1}階",
#     telephone_number: "036869470#{n}",
#     is_active: (n % 5 == 0) ? false : true
#   )
# end

# 注文履歴
# 会員ID（CustomerのID）が必要になるので、頑張れば何とか自動処理が
# 作れたのかもしれないが、手でセットするようにした。その他情報も手で
# セットしたIDから取得した。

# 手でセットするものたち
# tmp_customer = Customer.find(44)  # findのカッコの中
# tmp_total_payment = 10000 # 注文履歴詳細の合計額を手入力
# tmp_payment_method = 0 # 0: クレジットカード, 1: 銀行振込
# tmp_status = 0 # 0: 入金待ち, 1:入金確認, 2: 製作中, 3: 発送準備中, 4: 発送済み
# # puts '会員ID: ' + tmp_customer.id.to_s

# Order.create!(
#   customer_id: tmp_customer.id,
#   postal_code: tmp_customer.postal_code,
#   address: tmp_customer.address,
#   name: tmp_customer.last_name + tmp_customer.first_name,
#   shipping_cost: 800, # 固定値（仕様より）
#   total_payment: tmp_total_payment + 800,
#   payment_method: tmp_payment_method,
#   status: tmp_status
# )

# 注文履歴詳細
# seedで一番難しいのはこのテーブル。
# 他人のソースをイロイロ見たが、どれもよくわからん。
# 結局、地道に毎回手作業でセットした方が早そうだ。
tmp_order_id = 1 # すでに作成したデータの注文IDをセット

# 1行目
tmp_item_1 = Item.find(30) # 1行目の商品ID
tmp_amount_1 = 2 # 1行目の数量
# 2行目
tmp_item_2 = Item.find(31) # 2行目の商品ID
tmp_amount_2 = 3 # 2行目の数量
# 3行目
tmp_item_3 = Item.find(32) # 3行目の商品ID
tmp_amount_3 = 4 # 3行目の数量

OrderDetail.create!(
  [
    {
      order_id: tmp_order_id,
      item_id: tmp_item_1.id,
      amount: tmp_amount_1,
      price: tmp_item_1.price,
    },
    {
      order_id: tmp_order_id,
      item_id: tmp_item_2.id,
      amount: tmp_amount_2,
      price: tmp_item_2.price,
    },
    {
      order_id: tmp_order_id,
      item_id: tmp_item_3.id,
      amount: tmp_amount_3,
      price: tmp_item_3.price,
    }
  ]
)