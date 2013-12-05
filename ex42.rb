## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a object
class Dog < Animal

    def initialize(name)
        ## ??
        @name = name
    end
end

## Cat is-a object
class Cat < Animal

    def initialize(name)
        ## Cat has-a name
        @name = name
    end
end

## Class is-a person
class Person

    def initialize(name)
        ## ??
        @name = name

        ## Person has-a pet of some kind
        @pet = nil
    end

    attr_accessor :pet 
end

## Employee is-a person
class Employee < Person

    def initialize(name, salary)
        ## ?? hmm what is this strange magic?
        super(name)
        ## Employee has-a salary
        @salary = salary
    end

end

## Fish is-a object
class Fish
end

## Salmon is-a object
class Salmon < Fish
end

## Hailbut is-a object
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## mary has-a pet named satan
mary.pet = satan

## frank is-s new Employee
frank = Employee.new("Frank", 120000)

## frank has-a pet named rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Haibut
harry = Halibut.new()