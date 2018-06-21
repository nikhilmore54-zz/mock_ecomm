class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :delivery_address
      t.string :delivery_type
      t.string :payment_type
      t.timestamps
    end
  end
end
