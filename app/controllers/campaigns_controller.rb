class CampaignsController < ApplicationController


def index
	@campaigns = Campaign.all
	@user = Userbin.current_user
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
		if @campaign.user == Userbin.current_user
			render 'edit'
		else
			redirect_to '/'
		end
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
	@campaign.status = "live"
	if @campaign.save
		redirect_to controller: :charges, action: :new, :id => @campaign
	else 
		render :new
	end
end

def destroy
	@campaign = Campaign.find(params[:id])
	if @campaign.user == Userbin.current_user
		Campaign.find(params[:id]).destroy
		redirect_to campaigns_path
	else
		redirect_to campaigns_path 
	end
	
end


private
def campaign_params
  params.require(:campaign).permit(:description, :owner, :title, :price, :status)
end

end
