class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.text :description
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
    end
  end
end
