class RegistrationController < ApplicationController
  if session[:guest_habits]
    session[:guest_habits].each do |h|
      current_user.habits.create(
        title: h["title"],
        description: h["description"]
      )
    end
    session.delete(:guest_habits)
  end
end
