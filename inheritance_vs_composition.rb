# Putting composition into practice
# References
# https://medium.com/@MinimalGhost/inheritance-versus-composition-in-ruby-4ff52beb5e86
# https://medium.com/aviabird/ruby-composition-over-inheritance-3ff786ad9e5d This post's title might be questionable. It's talking about mixins

# Inheritance
class VaderLines
  def dark_side
    puts "I find yoour lack of faith disturbing"
  end

  def i_am_your_father
    puts "I am your father."
  end
end

class LukeLines
  def i_am_your_father
    puts "No... That's not true!! That's impossible!!"
    puts "NOOOOOOOOOOO"
  end
end

class Character
  def initialize(lines)
    @lines = lines
  end

  def i_am_your_father
    @lines.i_am_your_father
  end

  def dark_side
    @lines.dark_side
  end
end

luke = Character.new(LukeLines.new)
vader = Character.new(VaderLines.new)

luke.i_am_your_father
vader.dark_side

# father = Vader.new
# son = Luke.new

# father.dark_side
# son.dark_side

# father.i_am_your_father
# son.i_am_your_father

# Composition
# A technique by which classes may achieve polymorphic behavior and code reuse by containing other classes that implement the desired functionality instead of through inheritance.
# Ruby uses Modules and a concept called mixins. A Module is essentially a named, organized collection of methods. Mixins are the way in which we require these Modules into our Classes as needed. The methods of a Module can be Class methods or Instance methods, depending on how you add the mixin to the Class (extend and include, respectively).

class TieFighterWeapons
  def laser_cannons
    puts "TIE Fighter has GREEN laser cannons"
  end
end

class XWingWeapons
  def laser_cannons
    puts "X-Wing Fighter has RED laser cannons"
  end
end

class Spaceship
  def initialize(weapon_strategy)
    @weapon_strategy = weapon_strategy
  end

  def laser_cannons
    puts @weapon_strategy.laser_cannons
  end
end

red_five = Spaceship.new(XWingWeapons.new)
mithel = Spaceship.new(TieFighterWeapons.new)

red_five.laser_cannons

mithel.laser_cannons
