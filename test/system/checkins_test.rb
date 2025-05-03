require "application_system_test_case"

class CheckinsTest < ApplicationSystemTestCase
  include Devise::Test::IntegrationHelpers
  setup do
    @user = users(:one)
    sign_in @user

    @habit = habits(:one)
    @checkin = checkins(:one)
  end

  test "should create checkin" do
    visit habits_path
    find("button[id^='checkin-button']").click

    assert_text "Habit checked in!"
  end
end
