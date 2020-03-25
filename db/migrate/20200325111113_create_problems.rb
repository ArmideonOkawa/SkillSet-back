class CreateProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.belongs_to :test, null: false, foreign_key: true
      t.string :question
      t.string :choice1
      t.string :choice2
      t.string :choice3
      t.string :choice4
      t.integer :answer

      t.timestamps
    end
  end
end
