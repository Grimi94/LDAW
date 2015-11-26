class UsersController < ApplicationController
  before_action :verify_is_admin, only: [:index]
  
  def index
    @users = User.where("id != ?", current_user.id)
  end
  
  def destroy
    @users = User.find(params[:id])
    @users.destroy

    if @users.destroy
        redirect_to allUsers_path, notice: "User deleted."
    end
  end
  
  private
  
  def verify_is_admin
  (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
  end

end
