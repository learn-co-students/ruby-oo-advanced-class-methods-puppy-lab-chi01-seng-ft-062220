class Dog
attr_accessor :name

@@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.print_all
        @@all.each {|element| puts element.name}
    end

    def self.clear_all
        @@all.clear
    end
end