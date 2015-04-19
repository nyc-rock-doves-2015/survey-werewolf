class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.references :response
      t.references :survey

      t.timestamps
    end
  end
end
