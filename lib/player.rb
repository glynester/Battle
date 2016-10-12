class Player

  DEFAULT_HP = 50

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HP
  end
  
  def attack(player)
    player.take_damage
    
  end
  
  def take_damage
    @hit_points -= 10
  end


end
