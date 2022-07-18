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
#     price: 100 * n,
#     is_active: true
#   )
# end

# 顧客 nが10以上なら、電話番号の桁数が増えますので注意。どうでもいいけど。
# また、5件に1件くらいは退会済みがあってもいいかなと思って。
# 全件消すときは、rails cでコンソールに入ってCustomer.delete_allでどうぞ。
5.times do |n|
  Customer.create!(
    last_name: "姓姓#{n}",
    first_name: "名名#{n}",
    last_name_kana: "セイセイセイ#{n}",
    first_name_kana: "メイメイメイ#{n}",
    email: "sei#{n}@testdata.com",
    password: "passw0rd",
    postal_code: "#{1500041 + n}",
    address: "東京都渋谷区神南1丁目19-#{n} 
      パークウェースクエア2 #{n + 1}階",
    telephone_number: "036869470#{n}",
    is_active: (n % 5 == 0) ? false : true
  )
end
