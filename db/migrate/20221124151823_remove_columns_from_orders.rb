class RemoveColumnsFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :first_name, :string
    remove_column :orders, :last_name, :string
    remove_column :orders, :dni, :string
    remove_column :orders, :city, :string
    remove_column :orders, :address, :string
    remove_column :orders, :email, :string
    remove_column :orders, :delivery_date, :date
  end
end
