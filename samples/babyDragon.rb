class Dragon
  
  def initialize name
    @name = name
    @birthday = Time.new
    @asleep = false
    @stuffInBelly = 10 # He's full.
    @stuffInIntestine = 0 # He Doesn't need to go.
    
    puts "#{@name} is born, this day, on #{@birthday}."
  end
  
  def feed
    puts "you feed #{@name}."
    @stuffInBelly = 10
    passageOfTime
  end
  
  def walk
    puts "you walk #{@name}."
    @stuffInIntestine = 0
    passageOfTime
  end
  
  def putToBed
    puts "you put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end
  
  def toss
    puts "you toss #{@name} up into the air."
    passageOfTime
  end
  
  def rock
    puts "you rock #{@name} gently."
    @asleep = true
    puts "he briefly doses off..."
    passageOfTime
    if @asleep
      @asleep = false
      puts "...but wakes up when you stop."
    end
  end
  
  # methods defined here are internal for the object
  private
  
  def hungry? # method names can end with ? Awesome!
    # methods with ? usually should return True or False
    @stuffInBelly <= 2
  end
  
  def poopy?
    @stuffInIntestine >= 8
  end
  
  def passageOfTime
    if @stuffInBelly > 0
      # move from belly to intestine
      @stuffInBelly = @StuffInBelly - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else # Our Dragon is starving!
      if @asleep
        @asleep = false
        puts = "he wakes up suddenly!"
      end
      puts "#{@name} is starving! In desparation he ate YOU!"
      exit # Quits the Program
    end
    
    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
    
    if hungry?
      if @asleep
        @asleep = false
        puts "he wakes up suddenly!"
      end
      puts "#{@name} stomach grumbles..."
    end
    
    if poopy?
      if @asleep
        @asleep = false
        puts "he wakes up suddenly!"
      end
      puts "#{@name} does the potty dance..."
    end
  end
  
end

puts 'Name your dragon'
name = gets.chomp

pet = Dragon.new "#{name}"

# seems to have a problem with passageOfTime method
# cant tell why??

pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
pet.putToBed