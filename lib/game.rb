class Game

  def attack(player)
    player.receive_damage
  end
  def recieve_damage
    @hit_points -= AP
  end
end
