class RenameKatumToKatas < ActiveRecord::Migration
	def self.up
  		rename_table :katum, :katas
	end

	def self.down
		rename_table :katas, :katum
	end
end
