# Ruby ex1-3


class MyCar

  
  def initialize(year, color, model)
    @year = year
    @model = model
    @color = color
    @running=false
    @speed = 0
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
    #if(@running)
      @speed += 10
      puts "Speed is now #{@speed}"
    #else
    ##  puts "The car is not running!"
    #end
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
my_car.start
my_car.off
my_car.speedup()
my_car.slowdown()
my_car.start
my_car.speedup()
my_car.slowdown()
my_car.off
