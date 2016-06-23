class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index 
   
  end

  def update
    @user = current_user
    if @user.update(profile_params)
      redirect_to dashboard_path
    else
      render template: 'users/registrations/edit'
    end

  end

  private 
  def profile_params
    params.require(:user).permit(:avatar, :name, :email, :surname, :dob, :country,:hometown, :about, :facebook, :instagram, :gender)
  end
end
