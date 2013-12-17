class ChargesController < ApplicationController
	def new
    @charge = Charge.new
    @user = Userbin.current_user

    @charge.user = @user
	end

def create
  # Amount in cents
  @amount = Charge.find(params:id).charge

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

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to charges_path
end
private
def charges_params
  params.require(:charge).permit(:user, :campaign, :charge)
end
end
