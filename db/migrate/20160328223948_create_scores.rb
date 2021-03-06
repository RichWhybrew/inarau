class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :score
      t.references :user, index: true
      t.references :language, index: true

      t.timestamps null: false
    end
    add_foreign_key :scores, :users
    add_foreign_key :scores, :languages
  end
end
