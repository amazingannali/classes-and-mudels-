module Math
    def add(num1, num2)
      num1 + num2
    end
  
    def triple(num)
      num * num * num
    end
  
    def odd_or_even(num)
      if num % 2 == 0
        'even'
      else 
        'odd'
      end
    end
  end
  
  # include or use a class or mod from another file
  # require_relative - go to the folder and file to include
  # in your code 
  # in the same directory
  # ./
  # name file
  # out one directory
  # ../
  
  require_relative 'math'
  require_relative 'person'
  
  class MathAssignment
    include Math
  
    def first_sol
      odd_or_even(triple(add(10, 50)))
    end
  
    def second_sol
      triple(add(12, 20))
    end
  
    def new_person
      Person.new('bob', 23)
    end
  end
  
  class MathAssignment2
    include Math
  
    def first_sol
      odd_or_even(triple(3))
    end
  
    def second_sol
      triple(1)
    end
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  