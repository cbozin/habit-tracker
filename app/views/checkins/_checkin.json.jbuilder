json.extract! checkin, :id, :user_id, :habit_id, :checked_in, :date, :created_at, :updated_at
json.url checkin_url(checkin, format: :json)
