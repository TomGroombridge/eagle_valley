class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create 
		@product = Product.create params[:product].permit(:name, :quantity, :price,)
		redirect_to '/products'
	end

	def add_to_cart
		prodcut = Product.find(params[:id])
		@cart = Cart.new
		@cart.add_product(product)
		redirect_to(:action => 'show_cart')
	end

	def show_cart
		
	end


end
