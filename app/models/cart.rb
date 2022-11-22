class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items


  def sub_total
    sum = 0
    self.line_items.each do |line_item|
      sum += line_item.total_price
    end
    return sum
  end

  def sum_total
    sum = 0
    self.line_items.each do |line_item|
      sum += line_item.total_items
    end
    return sum
  end

  def add_product(product)
    current_item = line_items.find_by(product_id: product.id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product.id)
    end
    current_item
  end
end
