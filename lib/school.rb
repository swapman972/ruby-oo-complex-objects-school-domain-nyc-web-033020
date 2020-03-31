# code here!

class School
    def initialize (name)
        @name = name
        @roster = {}
    end
    attr_reader :name
    attr_reader :roster
    def add_student (name, grade)
        if roster[grade] == nil
            roster[grade] = []
            roster[grade] << name
        else 
            roster[grade] << name
        end
    end

    def grade(num)
        roster[num]
    end
    def sort
        roster.each do |key, value| 
            value.sort!
        end
    end
end