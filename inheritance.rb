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

end


XWing.new.weapon
XWing.new.wings
XWing.new.landing_gear

TieFighter.new.weapon
TieFighter.new.wings
TieFighter.new.landing_gear
