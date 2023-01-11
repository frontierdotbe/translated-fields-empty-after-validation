class Product < ApplicationRecord
  # Associations
  extend Mobility

  has_many :variants
  accepts_nested_attributes_for :variants

  validates :handle, uniqueness: true

  translates :title, type: :text
end
