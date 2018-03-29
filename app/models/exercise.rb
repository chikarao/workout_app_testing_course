class Exercise < ApplicationRecord
  belongs_to :user

  validates :workout, :workout_date, presence: true
  validates_numericality_of :duration_in_min, only_integer: true
end
