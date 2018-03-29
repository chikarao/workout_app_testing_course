class Exercise < ApplicationRecord
  belongs_to :user

  alias_attribute :workout_details, :workout
  alias_attribute :activity_date, :workout_date

  validates :workout_details, :activity_date, presence: true
  # validates_numericality_of :duration_in_min, only_integer: true
  validates :duration_in_min, numericality: { greater_than: 0.0 }

end
