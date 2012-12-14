class FoodsController < ApplicationController
  before_filter :authorize_owner

  def new
    @food = Food.new
  end

  def create
    @food = Food.create(params[:food])
    if @food.valid?
      redirect_to params[:redirect_url] || @food
    else
      render :new
    end
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    @food.update_attributes(params[:food])
    if @food.valid?
      redirect_to params[:redirect_url] || @food      
    else
      render :edit
    end
  end

  def destroy
    @food=Food.find(params[:id])
    @food.delete if @food
    redirect_to params[:redirect_url] || root_path
  end

  def authorize_owner
    authenticate_user! && (current_user.admin? || current_user.owner?)
  end
end
