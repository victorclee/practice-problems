# WHat problem are we solving?

class JetFighter
  def landing_gear
    puts "big_wheels"
  end
end

class XWing < JetFighter
  def weapon
    puts "xwing laser"
  end

  def wings
    puts "xwing wings"
  end
end

class TieFighter < JetFighter
  def weapon
    puts "tiefighter laser"
  end

  def wings
    puts "tiefighter wings"
  end
end

class HybridXWingTieFighter < JetFighter
  # shoot like a tie fighter
  # fly like a x wing

  def weapon
    puts "tiefighter laser"
  end

  def wings
    puts "xwing wings"
  end

  def landing_gear
    puts "hybrid landing gear"
  end
end

x_wing = XWing.new

x_wing.weapon
x_wing.wings
x_wing.landing_gear

tie_fighter = TieFighter.new

tie_fighter.weapon
tie_fighter.wings
tie_fighter.landing_gear

hybrid_fighter = HybridXWingTieFighter.new

hybrid_fighter.weapon
hybrid_fighter.wings
hybrid_fighter.landing_gear
