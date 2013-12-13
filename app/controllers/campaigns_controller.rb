class CampaignsController < ApplicationController


def index
	@campaigns = Campaign.all
end

def show
		@campaign = Campaign.find(params[:id])
		@user = Userbin.current_user
		if @user.id == @campaign.owner
			@c = 1
		else 
		end
		@submissions = @campaign.submissions
end

def new
	@campaign = Campaign.new
end

def edit
	@campaign = Campaign.find(params[:id])
	@campaign.user = Userbin.user
end

def update
	@campaign = Campaign.find(params[:id])
		if @campaign.update_attributes(campaign_params)
  			redirect_to campaign_url
  		else
  			render 'edit'
  		end
end

def create
	@userbin = Userbin.user.email
	@campaign = Campaign.new(campaign_params)
	@campaign.user = Userbin.user
	if @campaign.save
		redirect_to campaign_url(@campaign)
	else 
		render :new
	end
end

def destroy
end


private
def campaign_params
  params.require(:campaign).permit(:description, :owner, :title, :price)
end

end
