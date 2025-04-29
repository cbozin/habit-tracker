class CheckinsController < ApplicationController
  before_action :set_habit, :authenticate_user!

  # GET /checkins or /checkins.json
  def index
    @checkins = Checkin.all
  end

  # GET /checkins/1 or /checkins/1.json
  def show
  end

  # POST /checkins or /checkins.json
  def create
    @checkin = Checkin.find_or_initialize_by(habit: @habit, user: current_user, date: Date.today)

    if @checkin.new_record?
      @checkin.checked_in = true
      @checkin.save
      flash[:notice] = "Habit checked in!"
    else
      @checkin.checked_in = !@checkin.checked_in
      flash[:notice] = @checkin.checked_in ? "Habit checked in!" : "Checkin removed"
    end
    redirect_to root_path
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
