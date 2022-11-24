class AddUserToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :user, index: true, null: true
  end
end
