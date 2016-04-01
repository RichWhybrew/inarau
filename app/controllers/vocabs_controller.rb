class VocabsController < ApplicationController

	def create
		vocab = Vocab.new(native:params[:native], trans:params[:trans], language: Language.find(1), category: Category.find(params[:category].to_i), kata: Kata.find(params[:kata].to_i))
		if vocab.save
			redirect_to admins_path
		else
			redirect_to :back
		end
	end
	
end
