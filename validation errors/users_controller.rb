class UsersController < ApplicationController
    def index

    end


    # When only running the create action and create view
    def create

        # Check to see if parameters of the form are filled out
        if !params[:user].nil?
            @user = User.new(user_params)
            # Check if user can save to DB
            if @user.save
                # Load flash message if errors exist for user
                if @user.errors.full_messages.any? 
                    flash[:alert] = @user.errors.messages[:email]
                end
                redirect_to users_path        
            end
        else
            # If no user params existed, create new blank user for form
            @user = User.new

        end

    end


    private

    # Strong parameters for saving user info
    def user_params
        params.require(:user).permit(:name, :email)

    end
end
