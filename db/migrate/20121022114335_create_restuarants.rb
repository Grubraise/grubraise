class CreateRestuarants < ActiveRecord::Migration
  def change
    create_table :restuarants do |t|
      t.string :restuarant_name
      t.string :owner_name
      t.string :website
      t.string :email
      t.string :reference
      t.string :phone_number
      t.string :message

      t.timestamps
    end
  end
end
