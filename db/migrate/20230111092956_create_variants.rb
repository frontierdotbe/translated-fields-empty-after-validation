class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.string :title
      t.belongs_to :product
    end
  end
end
