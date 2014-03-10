class SessionsController < ApplicationController
	def new
		if session[:char_name]
			redirect_to village_path
		end
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			# Sign the user in and redirect to the user's show page.
			session[:char_name] = user.name;
			redirect_to village_path
		else
			# Create an error message and re-render the signin form.
			flash.now[:error] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
		session[:char_name] = nil
		redirect_to root_url
	end
end
