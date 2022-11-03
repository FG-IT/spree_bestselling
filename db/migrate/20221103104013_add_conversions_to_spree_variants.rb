class AddConversionsToSpreeVariants < ActiveRecord::Migration[6.0]
  def change
    add_column :spree_variants, :conversions, :integer, default: 0
    add_index :spree_variants, :conversions
  end
end
