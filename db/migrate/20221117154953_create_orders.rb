class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :dni
      t.string :city
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
