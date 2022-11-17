class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :line_items
  has_many_attached :photos

  before_update :actualiza_descuento
  before_save :actualiza_descuento

  # SE AGREGO PARA EL SEARCH DEL NAVBAR

  # include PgSearch::Model
  # pg_search_scope :search_products, against: %i[name description],
  #  using: {
  #    tsearch: {
  #      prefix: true
  #    }
  #  }

  # validar que todos lo campos no esten vacios al crear
  validates :name, :original_price, :discount, :stock, :description, :photos, presence: true

  # validacion para :name
  validates :name, length: { minimum: 10, message: "Debe de tener más de 10 caracteres" }

  # validacion para :original_price
  validates :original_price, numericality: { only_float: true, message: "Tiene que ser número" }
  validates :original_price, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 9999 }
  # validates :original_price, format: { with: /[0-9]*/, message: "solo numeros" }

  # validacion para :discount
  validates :discount, numericality: { only_integer: true }
  validates :discount, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 100 }

  # validacion para :stock
  validates :stock, numericality: { only_integer: true }
  validates :stock, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9999 }

  # validacion para :description
  validates :description, length: { minimum: 10, maximum: 1000, message: "Debe de tener más de 10 caracteres" }

  private

  def actualiza_descuento
    self.price = (
      self.original_price - (self.original_price * self.discount) / 100
    )
  end
end
