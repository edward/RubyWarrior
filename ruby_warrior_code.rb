class Player
  START_HEALING_AT_HEALTH_LEVEL = 15

  def taking_damage?(current_health)
    current_health < @health.to_i
  end

  def play_turn(warrior)
    if !warrior.feel.empty?
      warrior.attack!
    elsif !taking_damage?(warrior.health) && warrior.health < START_HEALING_AT_HEALTH_LEVEL
      warrior.rest!
    else
      warrior.walk!
    end
    
    @health = warrior.health
  end
end
  