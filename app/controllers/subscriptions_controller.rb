class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: %i[edit update destroy]

  def index
    @subscriptions = current_user.subscriptions
  end

  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.user = current_user
    if @subscription.save
      redirect_to subscriptions_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @subscription.update(subscription_params)
    if @subscription.save
      redirect_to subscriptions_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @subscription.destroy
    redirect_to subscriptions_path
  end



  private

  def subscription_params
    params.require(:subscription).permit(:price, :due_date, :starting_date, :name, :frequency)
  end

  def set_subscription
    @subscription = Subscription.find(params[:id])
  end
end
