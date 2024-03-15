# Putting composition into practice
# References
# https://medium.com/@MinimalGhost/inheritance-versus-composition-in-ruby-4ff52beb5e86
# https://medium.com/aviabird/ruby-composition-over-inheritance-3ff786ad9e5d

# Inheritance
class Vader
  def dark_side
    puts "I find yoour lack of faith disturbing"
  end

  def i_am_your_father
    puts "I am your father."
  end
end

class Luke < Vader
  def i_am_your_father
    puts "No... That's not true!! That's impossible!!"
    # super invokes the original inherited behavior
    super
    puts "NOOOOOOOOOOO"
  end
end

father = Vader.new
son = Luke.new

father.dark_side
son.dark_side

father.i_am_your_father
son.i_am_your_father

# Composition
# A technique by which classes may achieve polymorphic behavior and code reuse by containing other classes that implement the desired functionality instead of through inheritance.
# Ruby uses Modules and a concept called mixins. A Module is essentially a named, organized collection of methods. Mixins are the way in which we require these Modules into our Classes as needed. The methods of a Module can be Class methods or Instance methods, depending on how you add the mixin to the Class (extend and include, respectively).

module SpaceShipFlight
  def thrusters
    puts "SPACESHIP has standard thrusters"
  end

  def foils
    puts "SPACESHIP has standard foils"
  end

  def navigation_system
    puts "SPACESHIP has standard navigation system"
  end
end

module SpaceShipWeapons
  def torpedoes
    puts "SPACESHIP has torpedoes"
  end

  def laser_cannons
    puts "SPACESHIP has laser cannons"
  end
end

class X_Wing
  include SpaceShipFlight
  include SpaceShipWeapons

  def foils
    puts "X-Wing Fighter has S-foils"
  end

  def laser_cannons
    puts "X-Wing Fighter has RED laser cannons"
  end
end

class TIE_Fighter
  include SpaceShipFlight
  include SpaceShipWeapons

  def foils
    puts "TIE Fighter has vertical foils"
  end

  def laser_cannons
    puts "TIE Fighter has GREEN laser cannons"
  end
end

red_five = X_Wing.new
mithel = TIE_Fighter.new

red_five.laser_cannons
red_five.foils
mithel.laser_cannons
mithel.foils
