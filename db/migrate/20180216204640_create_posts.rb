class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :home, foreign_key: true
      t.references :member, foreign_key: true
      t.text :content_, null: false
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
