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
	@campaign = Campaign.new
end

def destroy
end

end