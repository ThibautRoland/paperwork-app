class SubscriptionsController < ApplicationController

  def index
    @subscriptions = current_user.subscriptions
  end

  

  private

  def subscription_params
    params.require(:subscription).permit(:price, :due_date, :starting_date, :name, :frequency)
  end

  def set_subscription
    @subscription = Subscription.find(params[:id])
  end
end
