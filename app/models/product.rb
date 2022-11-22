class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :line_items
  has_many_attached :photos

  before_update :actualiza_descuento
  before_save :actualiza_descuento

    # SE AGREGO PARA EL SEARCH DEL NAVBAR

  include PgSearch::Model
  pg_search_scope :search_products, against: [ :name, :description ],
    using: {
        tsearch: {
          prefix: true
          }
      }

  # ESTO ES LO QUE ROMPE TODO:
  # validar que todos lo campos no esten vacios al crear
  # validates :name, :old.price, :discount, :stock, :description, :photos, presence: true

  # # validacion para :name
  # validates :name, length: { minimum: 10, message: "Debe de tener más de 10 caracteres" }

  # # validacion para :old.price
  # validates :old.price, numericality: { only_float: true, message: "Tiene que ser número" }
  # validates :old.price, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 9999 }
  # # validates :old.price, format: { with: /[0-9]*/, message: "solo numeros" }

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
      self.old.price - (self.old.price * self.discount) / 100
    )
  end
end
