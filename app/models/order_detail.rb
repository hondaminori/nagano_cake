class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :item

  def item_name
    Item.find(item_id).name
  end

  def tax_include_price
    (price * 1.1).floor
  end

  def subtotal
    tax_include_price * amount
  end
end
