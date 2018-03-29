class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.integer :duration
      t.text :details
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
