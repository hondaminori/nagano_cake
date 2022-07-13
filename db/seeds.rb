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
Genre.create!(
  name: "ケーキ"
)

Genre.create!(
  name: "プリン"
)

Genre.create!(
  name: "焼き菓子"
)

Genre.create!(
  name: "キャンディ"
)