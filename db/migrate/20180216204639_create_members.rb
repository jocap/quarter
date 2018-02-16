class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.references :home, foreign_key: true
      t.string :username
      t.string :display_name
      t.string :email
      t.string :password
      t.text :description

      t.timestamps
    end
  end
end
