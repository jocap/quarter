class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :name_, null: false
      t.string :slug_, null: false

      t.text :description_, default: ""

      t.boolean :likes_enabled, default: true
      t.boolean :require_registration, default: false

      t.string :required_fields, default: [].to_yaml
      # serialized (note that "username" and "password" are *always* required)

      t.timestamps
    end
  end
end
