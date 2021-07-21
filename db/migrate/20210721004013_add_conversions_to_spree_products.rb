class AddConversionsToSpreeProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :spree_products, :conversions, :integer, default: 0
    add_index :spree_products, :conversions
  end
end
