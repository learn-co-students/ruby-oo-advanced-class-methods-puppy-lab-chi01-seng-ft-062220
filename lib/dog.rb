
#    .clear_all
#      is a class method that empties the @@all array of all existing dogs (FAILED - 4)
#    .print_all
#      is a class method that puts out the name of each dog to the terminal (FAILED - 5)
#  #save
#    adds this dog instance to the @@all array when called (FAILED - 6)
#    gets called inside initialize when a new Dog is created (FAILED - 7)
#  #name
#    has a name (FAILED - 8)







#require 'pry'
class Dog
    attr_accessor :name, :all
    attr_reader :save
    @@all = []
    def initialize(name)
       @name = name 
        save
    end
    def save
        @@all << self
    end    
    def self.all
        @@all
    end
    def self.clear_all
        @@all = []
    end
    def self.print_all
        self.all.each{|dog| puts dog.name}
    end            
end