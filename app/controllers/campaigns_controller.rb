class CampaignsController < ApplicationController


def index
	@campaigns = Campaign.all
end

def show
		@campaign = Campaign.find(params[:id])
		@submissions = Submission.all
end

def new
	@campaign = Campaign.new
end

def edit
	@campaign = Campaign.find(params[:id])
	@campaign.owner = Userbin.user
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
  params.require(:campaign).permit(:description, :owner, :title)
end

end
