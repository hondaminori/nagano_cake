class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details
  
  enum payment_method: { credit_card: 0, transfer: 1 }

  SHIPPING = 800

  def get_total_price
    sum = 0
    OrderDetail.where(order_id: id).each do |order_detail|
      sum += order_detail.subtotal
    end
    return sum
  end

  def get_billing_amount
    get_total_price + SHIPPING
  end
end
