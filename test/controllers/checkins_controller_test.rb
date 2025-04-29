require "test_helper"

class CheckinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @checkin = checkins(:one)
  end

  test "should get index" do
    get habit_checkins_url
    assert_response :success
  end

  test "should get new" do
    get new_habit_checkin_url
    assert_response :success
  end

  test "should create checkin" do
    assert_difference("Checkin.count") do
      post habit_checkins_url, params: { checkin: { checked_in: @checkin.checked_in, date: @checkin.date, habit_id: @checkin.habit_id, user_id: @checkin.user_id } }
    end

    assert_redirected_to habit_checkin_url(Checkin.last)
  end

  test "should show checkin" do
    get habit_checkin_url(@checkin)
    assert_response :success
  end
end
