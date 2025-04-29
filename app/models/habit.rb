class Habit < ApplicationRecord
  belongs_to :user
  has_many :checkins, dependent: :destroy

  validates :title, presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 500 }

  def current_streak(user)
    streak = 0
    today = Date.today

    while checkins.exists?(user: user, date: today - streak)
      streak += 1
    end
    streak
  end
end
