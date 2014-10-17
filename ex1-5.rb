# Ruby ex1-4


class MyCar
  attr_reader :year, :color
  
  def initialize(year, color, model)
    @year = year
    @model = model
    @color = color
    @running=false
    @speed = 0
  end
  def spray_paint(new_color)
    @color = new_color
  end
  def start()
    @running = true
    puts "The car is now running."
  end
 
  def off()
    @running = false
    puts "The car is no longer running."
  end
 
  def speedup()
    if(@running)
      @speed += 10
      puts "Speed is now #{@speed}"
    else
      puts "The car is not running!"
    end
  end  
  
  def slowdown()
    if(@running)
      @speed -= 10
      if(@speed <0)
        @speed = 0
      end
      puts "Speed is now #{@speed}"
    else
      puts "The car is not running!"
    end
  end  
end

my_car = MyCar.new('1990', 'Red', 'TransAm')
puts my_car.year
puts my_car.color
my_car.spray_paint('blue')
puts my_car.year
puts my_car.color
