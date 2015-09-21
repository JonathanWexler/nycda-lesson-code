class UsersController < ApplicationController
  def index
  end

  def create
    @user = User.new(user_params)
    if @user.save
        puts "SAVED"

    else
        puts "NOT SAVED"
    end
    redirect_to users_path
  end




  private

  def user_params
      params.require(:user).permit(:name, :email)
  end
end
