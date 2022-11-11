class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    def destroy
        @user = current_user.user.find(params[:id])
        @user.destroy
        redirect_to users_url, notice: "user was successfully destroyed."
      end
end
