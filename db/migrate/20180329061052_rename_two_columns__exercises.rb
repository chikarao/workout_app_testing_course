class RenameTwoColumnsExercises < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :exercises, :details, :workout
    rename_column :exercises, :date, :workout_date
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
