require "application_system_test_case"

class CheckinsTest < ApplicationSystemTestCase
  include Devise::Test::IntegrationHelpers
  setup do
    @user = users(:one)
    sign_in @user
    @checkin = checkins(:one)
  end

  test "should create checkin" do
    check "Checked in" if @checkin.checked_in
    fill_in "Date", with: @checkin.date
    fill_in "Habit", with: @checkin.habit_id
    fill_in "User", with: @checkin.user_id
    click_on "Create Checkin"

    assert_text "Checkin was successfully created"
    click_on "Back"
  end
end
