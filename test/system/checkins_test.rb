require "application_system_test_case"

class CheckinsTest < ApplicationSystemTestCase
  setup do
    @checkin = checkins(:one)
  end

  test "visiting the index" do
    visit checkins_url
    assert_selector "h1", text: "Checkins"
  end

  test "should create checkin" do
    visit checkins_url
    click_on "New checkin"

    check "Checked in" if @checkin.checked_in
    fill_in "Date", with: @checkin.date
    fill_in "Habit", with: @checkin.habit_id
    fill_in "User", with: @checkin.user_id
    click_on "Create Checkin"

    assert_text "Checkin was successfully created"
    click_on "Back"
  end

  test "should update Checkin" do
    visit checkin_url(@checkin)
    click_on "Edit this checkin", match: :first

    check "Checked in" if @checkin.checked_in
    fill_in "Date", with: @checkin.date
    fill_in "Habit", with: @checkin.habit_id
    fill_in "User", with: @checkin.user_id
    click_on "Update Checkin"

    assert_text "Checkin was successfully updated"
    click_on "Back"
  end

  test "should destroy Checkin" do
    visit checkin_url(@checkin)
    click_on "Destroy this checkin", match: :first

    assert_text "Checkin was successfully destroyed"
  end
end
