class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |s|
     s.integer :comedian_id
     s.text :name
     s.integer :length

     s.timestamps null: false
    end 
  end
end
