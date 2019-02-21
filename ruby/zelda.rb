class Link
  attr_reader :life

  def initialize
      @life=80
  end
end

def d40
  rand 1..40
end

def d20
  rand 1..20
end

def d100
  rand 1..100
end

class WhiteBokoblin
  attr_reader :life

  def initialize
      @life=90
  end
end

class OrangeMoblin
  attr_reader :life

  def initialize
       @life=50
  end
end
class BlueBokoblin
  attr_reader :life

  def initialize
       @life=60
  end
end

class OrangeBokoblin
  attr_reader :life
  def initialize
      @life=30
  end
end

roll=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20].sample
puts roll
case roll
when 1
  enemy = WhiteBokoblin.new
when 2..5
  enemy = OrangeMoblin.new
when 6..10
  enemy = BlueBokoblin.new
when 11..20
  enemy = OrangeBokoblin.new
end


puts "You are fighting #{enemy}"
link = Link.new

loop do
  roll = d100
  puts "you rolled a #{roll}"
  # link attacks
  case roll
  when 1..enemy.life
      puts 'the enemy survived'
  else
      puts 'you win!'
      exit
  end

  roll = d100
  puts "the enemy rolled a #{roll}"
  case roll
  when 1..link.life
      puts "you survived"
  else
      puts "you lost"
      exit
  end
end
