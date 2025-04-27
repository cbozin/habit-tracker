class CheckinsController < ApplicationController
  before_action :set_checkin, only: %i[ show edit update destroy ]

  # GET /checkins or /checkins.json
  def index
    @checkins = Checkin.all
  end

  # GET /checkins/1 or /checkins/1.json
  def show
  end

  # GET /checkins/new
  def new
    @checkin = Checkin.new
  end

  # GET /checkins/1/edit
  def edit
  end

  # POST /checkins or /checkins.json
  def create
    @checkin = Checkin.new(checkin_params)

    respond_to do |format|
      if @checkin.save
        format.html { redirect_to @checkin, notice: "Checkin was successfully created." }
        format.json { render :show, status: :created, location: @checkin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @checkin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checkins/1 or /checkins/1.json
  def update
    respond_to do |format|
      if @checkin.update(checkin_params)
        format.html { redirect_to @checkin, notice: "Checkin was successfully updated." }
        format.json { render :show, status: :ok, location: @checkin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @checkin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkins/1 or /checkins/1.json
  def destroy
    @checkin.destroy!

    respond_to do |format|
      format.html { redirect_to checkins_path, status: :see_other, notice: "Checkin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkin
      @checkin = Checkin.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def checkin_params
      params.expect(checkin: [ :user_id, :habit_id, :checked_in, :date ])
    end
end
