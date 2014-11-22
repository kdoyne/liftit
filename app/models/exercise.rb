class Exercise < ActiveRecord::Base
  validates :name, { presence: :true }
  validates :weight, { presence: :true }
  validates :reps, { presence: :true }
  validates :sets, { presence: :true }
  belongs_to :workout
end