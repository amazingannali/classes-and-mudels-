# class Person
#   attr_accessor :first_name, :last_name, :role, :school

#   def initialize(first, last, role, school)
#     @first_name = first
#     @last_name = last
#     @role = role
#     @school = school
#   end

#   def greet
#     case @role
#     when 'Student'
#       puts "Hello, my name is #{@first_name} #{@last_name} and I attend #{@school}"
#     when 'TA'
#       puts "Hello, my name is #{@first_name} #{@last_name} and I am a TA at #{@school}"
#     when 'Teacher'
#       puts "Hello, I am professor #{@last_name} and I teach at #{@school}"
#     else
#       raise "Invalid role"
#     end
#   end
# end

# student = Person.new('Jane', 'Doe', 'Student', 'Mountain Valley Jr. High')
# ta = Person.new('Jake', 'Johnson', 'TA', 'Mountain Valley Jr. High')
# teacher = Person.new('Dave', 'Joe', 'Teacher', 'DevPoint Labs')

# student.greet
# ta.greet
# teacher.greet

class Person
    attr_accessor :first_name, :last_name, :school
  
    def initialize(first, last, school)
      @first_name = first
      @last_name = last
      @school = school
    end
  
    def greet
      raise "Invalid role"
    end
  end
  
  class Student < Person
    def greet
      puts "Hello, my name is #{@first_name} #{@last_name} and I attend #{@school}"
    end
  end
  
  class Ta < Person
    def greet
      puts "Hello, my name is #{@first_name} #{@last_name} and I am a TA at #{@school}"
    end
  end
  
  class Teacher < Person
    def greet
      puts "Hello, I am professor #{@last_name} and I teach at #{@school}"
    end
  end
  
  student = Student.new('Jane', 'Doe', 'Mountain Valley Jr. High')
  ta = Ta.new('Jake', 'Johnson', 'Mountain Valley Jr. High')
  teacher = Teacher.new('Dave', 'Joe', 'DevPoint Labs')
  
  student.greet
  ta.greet
  teacher.greet