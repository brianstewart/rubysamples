class Die
  
  # initialize runs right when object is created
  def initialize
    roll
  end
  
  def roll
   @numberShowing = rand(6) + 1
  end
  
  # Returns what the dice is showing
  def showing
    return @numberShowing
  end
  
end

# Create 2 Die objects
dice = [Die.new, Die.new]

# Roll them
dice.each do |die|
  puts die.roll
end
