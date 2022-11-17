class LineItem < ApplicationRecord
  belongs_to :cart, optional: true
  belongs_to :product
  belongs_to :order, optional: true

  def total_price
    self.quantity * self.product.price
  end

  def total_items
    self.quantity
  end
end
