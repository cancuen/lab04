class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.text :code, :unique => true
	  t.date :date
	  t.integer :amount
	  t.integer :id_product
      t.timestamps
    end
	
	add_index :order, :id_product, :unique => false
	
  end

  def self.down
    drop_table :orders
  end
end
