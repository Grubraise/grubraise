class CreatePta < ActiveRecord::Migration
  def change
    create_table :pta do |t|
		t.string :email
		t.string :name,
		t.string :phone
		t.string :school
      t.timestamps
    end
  end
end
