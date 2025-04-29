class Checkin < ApplicationRecord
  belongs_to :user
  belongs_to :habit

  validates :date, uniqueness: { scope: [ :habit_id, :user_id ] }
  def start_time
    created_at
  end
end
