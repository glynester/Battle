class Player

  DEFAULT_HP = 50

  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end

  def take_damage
    @hit_points -= 10
  end

  
end
