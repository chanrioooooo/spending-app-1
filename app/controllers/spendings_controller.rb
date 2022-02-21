class SpendingsController < ApplicationController

  def index
    @spendings = Spending.all
  end

  def new
    @spending = Spending.new
  end

  def create
    @spending = Spending.new(spending_params)
    if @spending.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def spending_params
    params.require(:spending).permit(:useday, :place, :detail, :money).merge(user_id: current_user.id)
  end

end
