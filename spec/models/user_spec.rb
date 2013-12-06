require 'spec_helper'
# In order to gain access to the site,
# as demand user
# I want to be able to login.

# Scenario 1: Success
# When I add a species
# and I add a color
# and I click 'save'
# Then the page should display the
# color and species
# and the animal is saved


feature "demand user creates an account" do
	context "susessfully" do
		scenario "creating an account" do
			visit '/'

			fill_in 'username', with:'tepeh'
			fill_in 'name', with: 'tim'
			fill_in 'email', with: 'tim@gmail.com'
			fill_in 'type', with: 'demand'

			click_button 'submit'#it might be save

			expect(current_path).to eql users_path

			expect(page).to have_content 'tepeh'
			expect(page).to have_content 'Welcome'
		

		end 	
	end  
end


