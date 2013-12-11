require 'spec_helper'
feature "demand user can edit their account", js:true do
	context "success" do
		scenario "editing thier profile " do
			visit '/'
			
			 click_link 'Log in'

			 visit 'https://userbin.com/en/926618467667696/authenticate#http%3A%2F%2Flocalhost%3A3000'

			 fill_in('email', :with => 'eric@gmail.com')
			 fill_in('password', :with => 'password')

			 click_button 'Log in'

			 visit 'http://localhost:3000/account'

			click_button 'edit profile'

			fill_in('name', :with => 'Tim')
			click_link 'Save'
		end 	
	end  
end