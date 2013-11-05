class MenusController < ApplicationController

	def index
		@menu  = Menu.new		
		@menus = Menu.all 
	end

	def create
		@menu = Menu.create(params[:menu])
		if @menu.save
			render json: { menu_title: render_to_string(partial:'menu', locals: {menu:@menu}) }
		else
			render json: { error: @menu.errors.full_messages.join(', ')}, status: :unprocessable_entity
		end
		#redirect_to root_path
	end
end