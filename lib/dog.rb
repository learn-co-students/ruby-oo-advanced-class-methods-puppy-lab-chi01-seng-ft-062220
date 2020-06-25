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