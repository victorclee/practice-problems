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

