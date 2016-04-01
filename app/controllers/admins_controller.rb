class AdminsController < ApplicationController

	def index
		@vocabs = Vocab.all
	end

	def update
	end

	def new
		status = User.find(session[:user_id]).admin
		if status == 0
			redirect_to :root
		end
	end

	def destroy
	end

	def show
	end


end
