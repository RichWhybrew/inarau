class AddKataIdToScores < ActiveRecord::Migration
  def change
    add_column :scores, :kata_id, :integer
  end
end
