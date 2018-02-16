class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :post, foreign_key: true
      t.references :member, foreign_key: true
      t.text :content_, null: false
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
