class MailerController < ApplicationController

 private
  def list_params
    params.require(:meal).permit(:title, :body, :image)
  end
end
