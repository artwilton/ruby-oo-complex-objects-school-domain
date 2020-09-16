# require 'pry'

class School

    attr_accessor :name, :roster

    def initialize(name, roster = {} )
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade_number)
        @roster[grade_number]
    end

    def sort
       @roster.map { |k, v| [k, @roster[k].sort] }.to_h
    end

end

# binding.pry