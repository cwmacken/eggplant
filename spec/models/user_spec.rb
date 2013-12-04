require 'spec_helper'

describe User do
  context "creating a user"

	  it "is invald without a username" do
	  	expect(User.username:nil)
	  end

	  it "is invalid without a name" do 
	  end
	  
	  it "is invalid without a type" do 
	  end

	  it "is invalid without a valid email" do
	  end 

end
