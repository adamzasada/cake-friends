class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :cake_name
      t.string :cake_type
      t.string :cake_taste
      t.string :rating
      t.string :uri

      t.timestamps
    end
  end
end
