class Order < ApplicationRecord
  has_many :carts, dependent: :destroy
  # validates :delivery_address, :delivery_type, :payment_type, presence: true

  # DELIVERY_TYPES = ["Courier(DPD)", "Personal collection", "InPost"]
  # PAYMENT_TYPES  = ["Cash On Delivery", "Bank Transfer", "Dotpay"]
end
