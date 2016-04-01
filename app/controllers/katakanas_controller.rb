class KatakanasController < ApplicationController
	def index
	end

	def show
		if params[:id] == 5.to_s
			@level = 'kihon'
		end
		if params[:id] == 6.to_s
			@vocab = Vocab.where(kata: Kata.find(params[:id]))
			@level = 'kihon-katakana1'
		end
		if params[:id] == 7.to_s
			@vocab = Vocab.where(kata: Kata.find(params[:id]))
			@level = 'kihon-katakana2'
		end
		if params[:id] == 8.to_s
			@vocab = Vocab.where(kata: Kata.find(params[:id]))
			@level = 'kihon-katakana3'
		end
		if params[:id] == 9.to_s
			@vocab = Vocab.where(category: Category.find(4))
			@level = 'kata'
		end
	end
end
