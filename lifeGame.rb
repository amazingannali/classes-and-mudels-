class LifeGame 
    attr_accessor :person 
  
    def initialize(person)
      @person = person
    end
  
    def game 
      arr = [1, 2, 3, 4, 5]
  
      puts "Enter your guess from 1-5"
      user_input = gets.strip.to_i 
      if user_input == arr.sample 
        puts "You win !"
      else 
        puts "Sorry you lose, you age is now"
        @person.increase_age(user_input)
        puts @person.age
      end
    end
  
  end
  7:49
  app.rb
  7:49
  require_relative 'person'
  require_relative 'lifeGame'
  
  class App 
    attr_accessor :person 
    
    def initialize
      @person = init_person 
      lg = LifeGame.new(@person)
      lg.game
    end
  
    def init_person
      puts "Enter your name"
      name = gets.strip 
      puts "Enter your age"
      age = gets.strip.to_i
      @person = Person.new(name, age)
    end
  
  end
  
  app = App.new 