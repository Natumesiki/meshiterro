class MealsController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def edit
  end

   private
  def meals_params
    params.require(:meal).permit(:title, :body, :image)
  end

end
