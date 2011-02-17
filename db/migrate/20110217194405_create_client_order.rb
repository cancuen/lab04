class CreateClientOrder < ActiveRecord::Migration
  def self.up
      create_table :clients_orders, :id => false do |t|
      t.references :client, :order
      t.timestamps
  end

  def self.down
      drop_table :clients_orders
  end
end
