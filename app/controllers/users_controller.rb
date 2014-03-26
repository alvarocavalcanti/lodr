class UsersController < ApplicationController
	skip_before_filter :require_login

	def index
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:warning] = "Log in now to enter the realm."
			redirect_to root_path
		else 
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
end
