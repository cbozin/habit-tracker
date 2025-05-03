class CheckinsController < ApplicationController
  before_action :set_habit, :authenticate_user!

  # POST /checkins or /checkins.json
  def create
    @habit.checkins.create(user: current_user, date: Date.today)
    redirect_back fallback_location: habits_path, notice: "Habit checked in!"
  end

  def destroy
    checkin = @habit.checkins.find(params[:id])
    checkin.destroy if checkin.user == current_user
    redirect_back fallback_location: habits_path,  notice: "Check-in removed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkin
      @checkin = Checkin.find(params.expect(:id))
    end

    def set_habit
      @habit = Habit.find(params[:habit_id])
    end

    # Only allow a list of trusted parameters through.
    def checkin_params
      params.expect(checkin: [ :user_id, :habit_id, :checked_in, :date ])
    end
end
