class Order < ApplicationRecord
  belongs_to :cart
  belongs_to :user

  # validates :delivery_address, :delivery_type, :payment_type, presence: true
 
  DELIVERY_TYPES = ["Courier(DPD)", "Personal collection", "InPost"]
  PAYMENT_TYPES  = ["Cash On Delivery", "Bank Transfer", "Dotpay"]
end
