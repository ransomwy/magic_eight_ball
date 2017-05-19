require 'pry'
require 'babbler'



class Person
  def initialize
    @name = 'Ransom Valley'
    @age = 35
    @gender = 'male'
end
end

person_1 = Person.new
person_2 = Person.new

binding.pry
