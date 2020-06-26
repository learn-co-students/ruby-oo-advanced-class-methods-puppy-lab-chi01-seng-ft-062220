# Add your code here
#a class variable that keeps track of every instance
#class method to access the list of all instances pf a class, stored in a class variable.
require 'pry'

class Dog
@@all = []

attr_accessor :name

    def initialize (name)
    @name = name
    save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        puts @@all.map {|dog_instances| dog_instances.name}
    end

    def save
        @@all << self
    end



end

pup1 = Dog.new("Pluto")
pup2 = Dog.new("Mars")
pup3 = Dog.new("Jupiter")

p Dog.all
p Dog.print_all