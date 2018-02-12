class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.text :description, default: ""
      t.boolean :require_registration, default: false
      t.boolean :password_protection, default: false
      t.string :password, default: nil
      t.boolean :likes_enabled, default: true
      t.string :required_fields, default: [].to_yaml
      # serialized (note that "username" and "password" are *always* required)

      t.timestamps
    end
  end
end
