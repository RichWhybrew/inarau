class SessionsController < ApplicationController

	def index
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to user_path(session[:user_id])
		else
			flash[:errors] = ['Invalid combination, please try again']
			redirect_to :back
		end
	end

	def destroy
		session[:user_id] = nil
		session.clear
		redirect_to :root
	end

	def show
	end
end
