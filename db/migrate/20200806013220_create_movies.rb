class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title 
      t.string :rating 
      t.integer :cost 
    end
  end
end