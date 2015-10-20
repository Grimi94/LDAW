class UsersController < ApplicationController
  
  def show
    @reviews = Review.where(user_id: current_user.id)
  end
  def edit
  end

end
