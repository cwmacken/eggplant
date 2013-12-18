class ChargesController < ApplicationController
	def new
    
    @charge = Charge.new
    @campaign = Campaign.find(params[:id])
end

def create
  @campaign = Campaign.find(params[:id])
  
  
  #@campaign = Campaign.find(params[:id])
  # Amount in cents
  @amount = @campaign.price


  customer = Stripe::Customer.create(
    :email => 'example@stripe.com',
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )
   
   #PUT A NOTICE IN HERE!!!!!!
rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to account_url
end

private
def campaign_params
  params.require(:charge).permit(:user_id, :campaign_id)
end




end
