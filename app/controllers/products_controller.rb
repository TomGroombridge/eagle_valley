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


end
