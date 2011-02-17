class CreateClientOrderProduct < ActiveRecord::Migration
  def self.up
    create_table :clients_orders_products, :id => false do |t|
      t.references :client, :order, product
      t.timestamps
    end    
  end
  def self.down
    drop_table :clients_orders_products
  end
end