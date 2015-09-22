class SessionsController < ApplicationController
	def new
		#no need for input
	end

	def create
		@email = params[:email] #for when the page refreshes after failure - the email field is already filled (see the login_path form)
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to root_path
		else
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to login_path
	end
end
