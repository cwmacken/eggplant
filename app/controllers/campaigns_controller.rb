class CampaignsController < ApplicationController

def index
	@campaigns = Campaign.all
end

def show
	@campaigns = Campaign.all
end

def new
	@campaign = Campaign.new
end

def edit
end

def create
	@campaign = Campaign.new(campaign_params)
	@campaign.save
end

def destroy
end


private
def campaign_params
      params.require(:campaign).permit(:description)
end

end
