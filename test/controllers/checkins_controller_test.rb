require "test_helper"

class CheckinsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @user = users(:one)
    sign_in @user
    @checkin = checkins(:one)
  end

  test "should create checkin" do
    assert_difference("Checkin.count") do
      post habit_checkins_url(@habit), params: { checkin: { checked_in: @checkin.checked_in, date: @checkin.date, habit_id: @checkin.habit_id, user_id: @checkin.user_id } }
    end
  end
end
