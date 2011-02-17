class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
	
      t.text :name
      t.text :address 
	  t.text :nit, limit => 255
	  #add_index :clients, :nit, :unique => true

      t.timestamps
    end
	
	add_index :clients, :nit, :unique => true
	
  end

  def self.down
    drop_table :clients
  end
end
