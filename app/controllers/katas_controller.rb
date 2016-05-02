class KatasController < ApplicationController
	def index
	end

	def show
		if params[:id] == 0.to_s
			@level = 'kihon'
		end
		if params[:id] == 1.to_s
			@vocab = Vocab.where(kata: Kata.find(params[:id]))
			@level = 'kihon-hiragana1'
		end
		if params[:id] == 2.to_s
			@vocab = Vocab.where(kata: Kata.find(params[:id]))
			@level = 'kihon-hiragana2'
		end
		if params[:id] == 4.to_s
			@vocab = Vocab.where(category: Category.find(3)).order(id: :asc)
			@level = 'kata'
		end
	end

	def new
	end
end
