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


feature "demand user creates an account", js:true do
	context "success" do
		scenario "creating an account" do
			visit '/'

			click_link 'Sign up'

			#YOU NEED TO EDIT THIS UP EVERYTIME YOU RUN RSPEC..... ITS A USERBIN THING
			
			
			
			visit 'https://userbin.com/en/926618467667696/authenticate#http%3A%2F%2Flocalhost%3A3000'

			click_link 'Sign up'

			fill_in('email', :with => 'eric@gmail.com')
			fill_in('password', :with => 'password')
			# fill_in 'name', with: 'tim'
			# fill_in 'type', with: 'demand'

			click_button 'Sign up'


		end 	
		scenario "loging into a account" do
			visit '/'

			click_link 'Log in'

			#YOU NEED TO EDIT THIS UP EVERYTIME YOU RUN RSPEC..... ITS A USERBIN THING
			
			
			visit 'https://userbin.com/en/926618467667696/authenticate#http%3A%2F%2Flocalhost%3A3000'


			fill_in('email', :with => 'eric@gmail.com')
			fill_in('password', :with => 'password')
			# fill_in 'name', with: 'tim'
			# fill_in 'type', with: 'demand'

			click_button 'Log in'
		end
	end  
end



