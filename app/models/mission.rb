class Mission < ApplicationRecord
  belongs_to :scientist
  belongs_to :planet
  validates :name, presence: true
  validates :name, uniqueness: true

  def self.most_visited_planet
    all_mission_planets = Mission.all.map { |m| m.planet.name }
    planet = all_mission_planets.max_by { |planet| all_mission_planets.count(planet) }
    Planet.find_by(name: planet)
  end
end
