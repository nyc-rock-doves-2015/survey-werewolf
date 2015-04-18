class CreateFiles < ActiveRecord::Migration
  def change
  	create_table :uploads do |t|
  		t.string :filepath
  		t.references :user

  		t.timestamps
  	end
  end
end
