require "pry"

class Teacher

    attr_reader :name

    @@all = []
    
    def initialize (name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def students
        tss = TeacherStudent.all.select do |ts|
            ts.teacher == self 
        end
        tss.map do |ts|
             ts.student 
        end
       
    end

    method that returns student names of a specific teacher
    

  
end