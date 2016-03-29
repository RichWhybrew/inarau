class UsersController < ApplicationController
	def index
	end

	def create
		user = User.new(user_params)
		if user[:email] == "richwhybrew@gmail.com"
			user[:admin] = 1
		else
			user[:admin] = 0
		end
		if user.save
			session[:user_id] = User.last.user_id
			redirect_to user_path(session[:user_id])
		else
			flash[:errors] = user.errors.full_messages
			redirect_to :root
		end
	end

	def show
		@user = User.find(session[:user_id])
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation)
	end
	
end
