class CreatePtos < ActiveRecord::Migration
  def change
    create_table :ptos do |t|
      t.string :name
      t.string :email
      t.string :school
      t.string :phone

      t.timestamps
    end
  end
end
