class Product < ApplicationRecord

  validates :name, :model, :brand, :year, :ram, :external_storage, :product_type_id, presence: true

  belongs_to :user
  belongs_to :product_type

  delegate :name, to: :user, prefix: true, allow_nil: true

end
