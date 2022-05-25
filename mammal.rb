class Mammal 
    attr_accessor :name, :age 
  
    def initialize(name, age)
      @name = name 
      @age = age 
    end
  
    def breathe 
      puts "inhale and exhale"
    end 
  
    def speak 
      raise "You have to over ride this method"
    end 
  end
  
  class Cat < Mammal
    def initialize(name, age)
      super(name, age)
    end
  
    def speak
      puts "meow"
    end 
  end 
  
  atlas = Cat.new("Atlas", 4) 
  orion = Cat.new("Orion", 5)
  atlas.breathe
  orion.breathe
  atlas.speak 
  orion.speak 