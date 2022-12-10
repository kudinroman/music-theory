class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.string :email
      t.boolean :is_active
      t.datetime :last_login
      t.string :password
      t.string :role

      t.timestamps
    end
  end
end
