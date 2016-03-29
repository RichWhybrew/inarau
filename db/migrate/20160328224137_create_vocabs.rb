class CreateVocabs < ActiveRecord::Migration
  def change
    create_table :vocabs do |t|
      t.string :native
      t.string :trans
      t.references :language, index: true
      t.references :category, index: true
      t.references :katum, index: true

      t.timestamps null: false
    end
    add_foreign_key :vocabs, :languages
    add_foreign_key :vocabs, :categories
    add_foreign_key :vocabs, :kata
  end
end
