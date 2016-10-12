class Player

  DEFAULT_HP = 50

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HP
  end


end
