class Parent 
    def parent_method
      puts 'this is from parent'
    end
  end
  
  class Child < Parent 
    # override 
    # def parent_method
    #   puts "No this is patrick"
    # end
  
    #alter
    # def parent_method
    #   puts "I am the child"
    #   super() # bring the code from the parent 
    # end
  end 
  
  p = Parent.new 
  c = Child.new 
  
  p.parent_method
  c.parent_method