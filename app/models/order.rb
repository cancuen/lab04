class Order < ActiveRecord::Base
	belongs_to :clients
	has_many :products
	
	#createOrder(clientNit, productCode)
	@order = Order.createOrder(:nit => client.nit, :code => @order.code)
end
