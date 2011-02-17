class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.text :code, :unique => true
	  t.float :price
      t.text :description
	  t.integer :supplier_id
      t.timestamps
    end
  end
  add_index :products, :supplier_id, :unique => false

  def self.down
    drop_table :products
  end
end
