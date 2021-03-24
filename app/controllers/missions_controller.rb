class MissionsController < ApplicationController
  def new
    @mission = Mission.new
    @scientists = Scientist.all
    @planets = Planet.all
  end

  def create
    @mission = Mission.create(params.require(:mission).permit(:name, :scientist_id, :planet_id))

    if @mission.valid?
      redirect_to scientist_path(@mission.scientist_id)
    else
      flash[:errors] = @mission.errors.full_messages
      redirect_to new_mission_path
    end
  end
end
