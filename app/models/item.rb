class Item < ApplicationRecord
  has_one_attached :image
  has_many :order_details

  def tax_include
    (price * 1.1).floor
  end
end
