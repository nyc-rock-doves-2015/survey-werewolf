class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_desc, null: false
      t.references :survey, null: false
      t.references :answer

      t.timestamps
    end
  end
end
