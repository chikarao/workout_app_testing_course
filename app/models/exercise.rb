class Exercise < ApplicationRecord
  belongs_to :user

  validates :workout, :workout_date, presence: true
  # validates_numericality_of :duration_in_min, only_integer: true
  validates :duration_in_min, numericality: { greater_than: 0.0 }

  # alias_attributes :workout_details, :workout
  # alias_attributes :activity_date, :workout_date

end
