class CreateKata < ActiveRecord::Migration
  def change
    create_table :kata do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :kata, :users
  end
end
