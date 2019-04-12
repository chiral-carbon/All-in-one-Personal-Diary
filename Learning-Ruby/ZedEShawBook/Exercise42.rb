## Animal is-a object look at the extra credit
class Animal
end

##  Dog is a(n) Animal
class Dog < Animal

  def initialize(name)
    ## has a name
    @name = name
  end
end

## cat is an animal
class Cat < Animal

  def initialize(name)
    ## has a name
    @name = name
  end
end

## is a
class Person

  def initialize(name)
    ## has a
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## employee is a person
class Employee < Person

  def initialize(name, salary)
    ## has a name... hmm what is this strange magic?
    super(name)
    ## has  a salary
    @salary = salary
  end

end

## ??
class Fish
end

## ??
class Salmon < Fish
end

## ??
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## ??
satan = Cat.new("Satan")

## ??
mary = Person.new("Mary")

## ??
mary.pet = satan

## ??
frank = Employee.new("Frank", 120000)

## ??
frank.pet = rover

## ??
flipper = Fish.new()

## ??
crouse = Salmon.new()

## ??
harry = Halibut.new()
