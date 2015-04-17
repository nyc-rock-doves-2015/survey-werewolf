class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer_text, null: false
      t.references :question, null: false

      t.timestamps
    end
  end
end
