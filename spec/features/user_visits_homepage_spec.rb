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
		it 'can view a list of created menus' do
			visit root_path
			fill_in "menu_title", with: "Lunch"
			click_on "Add Menu"
			expect(page).to have_content "Lunch"
		end
	end
end