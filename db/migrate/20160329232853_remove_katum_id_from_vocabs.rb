class RemoveKatumIdFromVocabs < ActiveRecord::Migration
  def change
    remove_column :vocabs, :katum_id, :integer
  end
end
