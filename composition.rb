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

class JetFighter
  attr_reader :wings, :weapons, :thrusters, :landing_gear

  def initialize(wings, weapons, landing_gear, thrusters)
    @wings = wings
    @weapons = weapons
    @landing_gear = landing_gear
    @thrusters = thrusters
  end
end

x_wing = JetFighter.new(XWingWings.new, XWingWeapons.new, XWingThrusters.new, GeneralLandingGear.new)

x_wing.wings.fly
x_wing.weapons.fire
x_wing.thrusters.propel
x_wing.landing_gear.land

tie_fighter = JetFighter.new(TieFighterWings.new, TieFighterWeapons.new, TieFighterThrusters.new, GeneralLandingGear.new)

tie_fighter.wings.fly
tie_fighter.weapons.fire
tie_fighter.thrusters.propel
tie_fighter.landing_gear.land

hybrid_fighter = JetFighter.new(XWingWings.new, TieFighterWeapon.new, XWingThrusters.new, GeneralLandingGear.new)

hybrid_fighter.wings.fly
hybrid_fighter.weapons.fire
hybrid_fighter.thrusters.propel
hybrid_fighter.landing_gear.land

# X x t
# x t x
# t x x
# x t t
# t t x
# t x t
