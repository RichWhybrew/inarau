class AddKataIdToVocabs < ActiveRecord::Migration
  def change
    add_column :vocabs, :kata_id, :integer
  end
end
