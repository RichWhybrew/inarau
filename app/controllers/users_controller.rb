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
			session[:user_id] = User.last.id
			Score.create(score:0, user: User.find(session[:user_id]), language: Language.find(1), kata: Kata.find(1))
			Belt.create(color:"Whitebelt", user: User.find(session[:user_id]), language: Language.find(1))
			redirect_to user_path(session[:user_id])
		else
			flash[:errors] = user.errors.full_messages
			redirect_to :back
		end
	end

	def show
		@user = User.find(session[:user_id])
	end

	def edit
		@user = User.find(session[:user_id])
	end

	def update
		if User.find(session[:user_id]).update(user_params)
			redirect_to user_path(session[:user_id])
		else
			redirect_to :back
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation)
	end
	
end
