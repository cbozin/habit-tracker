require "application_system_test_case"

class HabitsTest < ApplicationSystemTestCase
  include Devise::Test::IntegrationHelpers
  setup do
    @user = users(:one)
    sign_in @user
    @habit = habits(:one)
  end

  test "visiting the index" do
    visit habits_url
    assert_selector "h1", text: "Habits"
  end

  test "should create habit" do
    visit habits_url
    click_on "Add New Habit"

    fill_in "Description", with: @habit.description
    fill_in "Title", with: @habit.title
    click_on "Create Habit"

    assert_text "Habit was successfully created"
  end

  test "should update Habit" do
    visit habit_url(@habit)
    click_on "Edit this habit", match: :first

    fill_in "Description", with: @habit.description
    fill_in "Title", with: @habit.title
    click_on "Create Habit"

    assert_text "Habit was successfully updated"
  end

  test "should destroy Habit" do
    visit habit_path(@habit)

    click_on "Destroy this habit", match: :first


    assert_text "Habit was successfully deleted"
  end
end
