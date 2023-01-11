class AddHandleToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :handle, :string
  end
end
