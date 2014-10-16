# Ruby ex1-2

module MyModule
  def do_stuff(what)
    puts "I'm busy doing #{what}"
  end
end

class MyClass
  include MyModule
end

my_obj = MyClass.new
my_obj.do_stuff("coding stuff")
