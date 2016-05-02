class ScoresController < ApplicationController

	def index
		@users = User.joins(:scores).group('users.id').order('SUM(scores.score) DESC')
	end

	def create
		score = Score.new(score:params[:score].to_i, user: User.find(params[:user].to_i), language: Language.find(1), kata: Kata.find(params[:kata].to_i))
		if score.save
		 result = 'woohoo'
		else
			fail
		end
	end

end
