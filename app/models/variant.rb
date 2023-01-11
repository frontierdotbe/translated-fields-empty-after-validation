class Variant < ApplicationRecord
  # Associations
  extend Mobility
  belongs_to :product

  translates :title, type: :text
end
