class MenusController < ApplicationController

	def index
		@menu  = Menu.new		
		@menus = Menu.all 
	end

	def create
		@menu = Menu.create(params[:menu])
		redirect_to root_path
	end
end