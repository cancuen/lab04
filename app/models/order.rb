class Order < ActiveRecord::Base
	belongs_to :clients
	has_many :products
end
