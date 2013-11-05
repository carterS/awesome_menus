class MenusController < ApplicationController

	def index
		@menu  = Menu.new		
	end

	def create
		@menu = Menu.create(params[:menu])
	end
end