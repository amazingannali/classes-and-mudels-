class Person
    attr_accessor :name, :age
  
    # reserve method that will run first with
    # the class is instantiated
    def initialize(name, age)
      # instance what they put in when they
      # create this person
      # @ instance var, scoped with in a class running instance
      # as long as we are using the instance it is scope to the instance
      @name = name 
      @age = age
    end
  
    def increase_age(num)
      @age += num
    end
  end
  
  # new instance of an object
  # jake = Person.new('jake', 45 )
  # jack = Person.new(45, 'jack')
  # jill = Person.new('jill', 23)
  # p jake
  # p jack
  # p jill
  # puts jake.name
  # puts jake.age  
  # puts jill.name
  # puts jill.age 
  # jake.increase_age(3) 
  # puts jake.age