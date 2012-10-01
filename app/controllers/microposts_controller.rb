class MicropostsController < ApplicationController
  #like private with exceptions
  before_filter :signed_in_user
  before_filter :correct_user,   :only=> :destroy
  
  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_path
    else
      #make an empty array if it fails
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def new
    @micropost = current_user.microposts.build(params[:micropost])
  end  
  def destroy
    @micropost.destroy
    redirect_to root_path
  end
  private
    def correct_user
      #In this case, we use find_by_id instead of find because the latter 
      #raises an exception when the micropost doesn’t exist instead of returning nil
      @micropost = current_user.microposts.find_by_id(params[:id])
      redirect_to root_path if @micropost.nil?
    end  
end