class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.boolean :require_registration
      t.boolean :password_protection
      t.string :password
      t.boolean :likes_enabled
      t.array :required_fields

      t.timestamps
    end
  end
end
