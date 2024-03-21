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

XWing.new.wings.fly
XWing.new.weapons.fire
XWing.new.thrusters.propel
XWing.new.landing_gear.land

TieFighter.new.wings.fly
TieFighter.new.weapons.fire
TieFighter.new.thrusters.propel
TieFighter.new.landing_gear.land

HybridFighter.new.wings.fly
HybridFighter.new.weapons.fire
HybridFighter.new.thrusters.propel
HybridFighter.new.landing_gear.land
