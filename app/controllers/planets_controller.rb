class PlanetsController < ApplicationController
  def index 
    @planets = Planet.all
    @most_visited_planet = Mission.most_visited_planet
  end 

  def show
    @planet = Planet.find(params[:id])
  end 

end
