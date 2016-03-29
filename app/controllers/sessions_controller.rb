class SessionsController < ApplicationController

	def index
	end

	def create
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to user_path(session[:user_id])
		else
			flash[:login_errors] = ['Invalid combination']
			redirect_to :back
		end
	end

	def destroy
		session[:user_id] = nil
		session.clear
		redirect_to :root
	end
end
