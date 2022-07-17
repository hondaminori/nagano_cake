class Item < ApplicationRecord
  has_one_attached :image

  def tax_include
    (price * 1.1).floor
  end
end
