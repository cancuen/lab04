class CreateProductSupplier < ActiveRecord::Migration
  def self.up
    create_table :products_suppliers, :id => false do |t|
      t.references :product, :supplier
      t.timestamps
    end    
  end
  def self.down
    drop_table :products_suppliers
  end
end
