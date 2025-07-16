require "ostruct"

class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  helper_method :current_or_guest_user

  private

  def current_or_guest_user
    return current_user if user_signed_in?

    @guest_user ||= begin
      OpenStruct.new(
        habits: session[:guest_habits] ||= []
      )
    end
  end

  def require_real_user!
    unless user_signed_in?
      redirect_to root_path, alert: "Please sign up or login to save, update, or delete your habits!"
    end
  end
end
