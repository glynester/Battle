class Player
  attr_reader :name, :hit_points

  MAX_HP = 100
  AP = 10

  def initialize(name, hit_points= MAX_HP)
    @name = name
    @hit_points = hit_points
  end
  def receive_damage
    @hit_points -= AP
  end

end
