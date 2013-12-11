class CampaignsController < ApplicationController

def index
	@campaigns = Campaign.all
end

def show
	@campaign = Campaign.find(params[:id])
end

def new
	@campaign = Campaign.new
end

def edit
end

def create
	@userbin = Userbin.user.email
	@campaign = Campaign.new(campaign_params)
	@campaign.owner = Userbin.user
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
  params.require(:campaign).permit(:description, :owner)
end

end
