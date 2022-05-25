class Dog
    attr_accessor :name, :color, :age 
  
    def initialize(name, color, age)
      @name = name 
      @color = color 
      @age = age 
    end
  
    # Instance Method
    # works with a instance of an object
    # change depending on which dog we are talking about 
    def info
      puts "#{@name} is the color of: #{@color}, age: #{@age}"
      # self the current object, grab the current object information 
      puts "#{self.name} is the color of: #{self.color}, age: #{self.age}"
    end
  
    # Class Method
    # work as a class as a whole 
    # doesn't work with instances 
    # start with the keyword self  
    def self.bark
      puts 'Woof'
    end
  end
  
  griffin = Dog.new("Griffin", "Red", 13)
  rune = Dog.new("Rune", "White", 2)
  griffin.info 
  rune.info
  # griffin.bark err 
  # rune.bark err
  # Dog.bark 