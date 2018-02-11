class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.references :home, foreign_key: true

      t.integer :clearance

      t.string :username

      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token

      t.string :display_name
      t.string :email

      t.text :description

      t.timestamps
    end
  end
end
