class Order < ApplicationRecord
<<<<<<< 1a3cf0281a8005d34bd850f9373aefbf88d3aae7
  has_many :carts, dependent: :destroy
  # validates :delivery_address, :delivery_type, :payment_type, presence: true

  # DELIVERY_TYPES = ["Courier(DPD)", "Personal collection", "InPost"]
  # PAYMENT_TYPES  = ["Cash On Delivery", "Bank Transfer", "Dotpay"]
=======
  belongs_to :cart
  belongs_to :user

  # validates :delivery_address, :delivery_type, :payment_type, presence: true
 
  DELIVERY_TYPES = ["Courier(DPD)", "Personal collection", "InPost"]
  PAYMENT_TYPES  = ["Cash On Delivery", "Bank Transfer", "Dotpay"]
>>>>>>> Add order page
end
