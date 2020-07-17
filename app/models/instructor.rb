class Instructor

    attr_accessor :name 
    @@all = []
    
    def initialize(name)
        @name = name
        save_teach 
    end 

    def self.all
        @@all 
    end 

    def save_teach
        @@all << self 
    end 

end
