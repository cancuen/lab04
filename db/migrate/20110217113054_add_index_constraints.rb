class AddIndexConstraints < ActiveRecord::Migration
  def self.up
    #add_index :students, :student_id, :unique => true, :name => 'studentid'
    #add_index :courses, :code, :unique => true, :name => 'codeid'
	add_column :students, :carnet, :string
  
  end
  def self.down
#remove_index :students, :student_id
#remove_index :courses, :code
remove_column :students, :carnet
  end
end
