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
    click_on "Add Habit"

    fill_in "Description", with: @habit.description
    fill_in "Title", with: @habit.title
    click_on "Create Habit"

    assert_text "Habit was successfully created"
    click_on "Back"
  end

  test "should update Habit", js: true do
    driven_by :selenium_chrome_headless
    visit habits_url

    find("a", "View Habit", match: :first).click
    within(".modal") do
      click_on "Edit Habit", match: :first
      fill_in "Description", with: @habit.description
      fill_in "Title", with: @habit.title
      click_on "Update Habit"
    end

    assert_text "Habit was successfully updated"
    click_on "Back"
  end

  test "should destroy Habit", js: true do
    driven_by :selenium_chrome_headless
    visit habits_url

    find("a", text: "View Habit", match: :first).click
    within(".modal") do
      accept_confirm do
        click_on "Delete Habit"
      end
    end

    assert_text "Habit was successfully destroyed"
  end
end
