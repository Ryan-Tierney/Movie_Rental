class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username 
      t.string :password_digest 
      t.integer :money 
      t.integer :age 
      t.boolean :admin, default: false 
    end
  end
end
