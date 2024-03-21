class XWingWeapons
  def fire
    puts "XWing laser"
  end
end

class XWingWings
  def fly
    puts "XWing wings"
  end
end

class XWingThrusters
  def propel
    puts "XWing thrusters"
  end
end

class GeneralLandingGear
  def land
    puts "general landing gear"
  end
end

class HybridLandingGear
  def land
    puts "hybrid landing gear"
  end
end

class HybridThrusters
  def propel
    puts "hybrid thrusters"
  end
end

class TieFighterWeapons
  def fire
    puts "TieFighter laser"
  end
end

class TieFighterWings
  def fly
    puts "TieFighter wings"
  end
end

class TieFighterThrusters
  def propel
    puts "TieFighter thrusters"
  end
end

# continue to build each component and compare with inheritance
class XWing
  attr_reader :wings, :weapons, :thrusters, :landing_gear

  def initialize(wings: XWingWings.new, weapons: XWingWeapons.new, landing_gear: GeneralLandingGear.new, thrusters: XWingThrusters.new)
    @wings = wings
    @weapons = weapons
    @landing_gear = landing_gear
    @thrusters = thrusters
  end
end

class TieFighter
  attr_reader :wings, :weapons, :thrusters, :landing_gear

  def initialize(wings: TieFighterWings.new, weapons: TieFighterWeapons.new, landing_gear: GeneralLandingGear.new, thrusters: TieFighterThrusters.new)
    @wings = wings
    @weapons = weapons
    @landing_gear = landing_gear
    @thrusters = thrusters
  end
end

class HybridFighter
  attr_reader :wings, :weapons, :thrusters, :landing_gear

  def initialize(wings: TieFighterWings.new, weapons: XWingWeapons.new, landing_gear: HybridLandingGear.new, thrusters: HybridThrusters.new)
    @wings = wings
    @weapons = weapons
    @landing_gear = landing_gear
    @thrusters = thrusters
  end
end

x_wing = XWing.new

x_wing.wings.fly
x_wing.weapons.fire
x_wing.thrusters.propel
x_wing.landing_gear.land

tie_fighter = TieFighter.new

tie_fighter.wings.fly
tie_fighter.weapons.fire
tie_fighter.thrusters.propel
tie_fighter.landing_gear.land

hybrid_fighter = HybridFighter.new

hybrid_fighter.wings.fly
hybrid_fighter.weapons.fire
hybrid_fighter.thrusters.propel
hybrid_fighter.landing_gear.land
