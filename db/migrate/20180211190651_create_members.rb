class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.references :home, foreign_key: true

      t.integer :clearance, limit: 5, default: 0
      # 0 = no admin access
      # 5 = full admin access

      t.boolean :blocked, default: false

      t.string :username, null: false

      t.string :password_digest, null: false

      t.string :display_name, default: nil
      t.string :email, default: nil

      t.text :description, default: nil

      t.timestamps
    end
  end
end
