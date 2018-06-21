class AddUserToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_reference :photos, :user, foreign_key: true
    add_reference :carts, :user, foreign_key: true
  end
end
