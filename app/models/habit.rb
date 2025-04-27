class Habit < ApplicationRecord
  belongs_to :user
  has_many :checkins, dependent: :destroy

  validates :title, presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 500 }
end
