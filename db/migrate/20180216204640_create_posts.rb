class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :home, foreign_key: true
      t.references :member, foreign_key: true
      t.text :content
      t.integer :likes

      t.timestamps
    end
  end
end
