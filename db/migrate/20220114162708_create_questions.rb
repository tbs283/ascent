class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :subject_id
      t.text :atatement
      t.boolean :correct_answer
      t.text :commentaly

      t.timestamps
    end
  end
end
