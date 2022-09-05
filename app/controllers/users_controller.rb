class UsersController < ApplicationController
   before_action :authenticate_user!, only: [:show,:edit]

  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images
    @user = current_user.id
  end

  #   def create
  #   @user = User.show(user_params)
  #   @user = current_user.id
  #   @user.save
  #   redirect_to user_path
  # end


  def edit
    @user = User.find(params[:id])
  end

 def update
   user = User.find(params[:id])
   user.update(user_params)
   redirect_to user_path(user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
