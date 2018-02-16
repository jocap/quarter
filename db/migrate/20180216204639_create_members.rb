class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.references :home, foreign_key: true

      t.integer :clearance, limit: 5, default: 0
      # 0 = no admin access
      # 5 = full admin access

      t.boolean :blocked, default: false

      t.string :username_, null: false

      t.string :password_digest, null: false

      t.text :picture_, default: nil
      t.string :display_name_, default: nil
      t.string :email_, default: nil

      t.text :description_, default: nil

      t.timestamps
    end
  end
end
