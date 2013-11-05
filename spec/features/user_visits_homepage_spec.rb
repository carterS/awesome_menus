require 'spec_helper'

feature 'guests visits homepage' do
	describe 'guest can visit the homepage' do 
		it 'can create menu' do 
			visit root_path
			expect {
				fill_in "menu_title", with: "Breakfast"
				click_on "Add Menu"
			}.to change{Menu.count}.by(1) 
		end
	end
end