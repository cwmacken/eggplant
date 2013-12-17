class ChargesController < ApplicationController
	def new
    @charge = Charge.new
    @user = Userbin.current_user

    @charge.user = @user
	end

def create
  @charge = Charge.new(charges_params)
  # Amount in cents
  @amount = @charge.charge
  if @charge.save
    redirect_to charge_url(@charge)
  else 
    render :new
    #notice
  end
end

def show
  @charge = Charge.find(params[:id])
end

def review
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
