class Workout < ActiveRecord::Base
  belongs_to :user
  validates :date_time, { presence: :true }
  has_many :exercises
end