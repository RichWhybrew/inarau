class CreateAkapens < ActiveRecord::Migration
  def change
    create_table :akapens do |t|
      t.integer :correct
      t.integer :incorrect
      t.references :vocab, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :akapens, :vocabs
    add_foreign_key :akapens, :users
  end
end
