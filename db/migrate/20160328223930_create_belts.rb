class CreateBelts < ActiveRecord::Migration
  def change
    create_table :belts do |t|
      t.string :color
      t.references :user, index: true
      t.references :language, index: true

      t.timestamps null: false
    end
    add_foreign_key :belts, :users
    add_foreign_key :belts, :languages
  end
end
