require 'spec_helper'

describe User do
  before do 
  	@userfail = User.create(username: nil, name: nil)
  end

  context "creating a user"
	  
	  it "will validate the presense of a username" do
	 			expect(@userfail.username).to_not be_valid
	  end

	  it "will validate the presense of a name" do
	 			expect(@userfail.name).to_not be_valid
	  end
end
