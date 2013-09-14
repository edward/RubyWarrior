  class Player
  START_HEALING_AT_HEALTH_LEVEL = 15
  rescued_prisoner = false
  def taking_damage?(current_health)
   current_health < @health.to_i 
     end

  def play_turn(warrior)
    if warrior.feel(:backward).empty? && rescued_prisoner = false
      warrior.walk!(:backward)
    elsif warrior.feel(:backward).captive?
      warrior.rescue!(:backward)
      rescued_prisoner = true
    elsif warrior.feel(:backward).wall?
      warrior.walk!
    elsif warrior.feel(:forward).empty? && !rescued_prisoner = true
      warrior.walk!
    elsif warrior.feel.enemy?
      warrior.attack!
    else !taking_damage?(warrior.health) && warrior.health < START_HEALING_AT_HEALTH_LEVEL
      warrior.rest!
    end

    @health = warrior.health
  end
end 
