require 'pry'

class School
    attr_accessor :name, :roster
    
    def initialize(name) #asking empty hash roster, so no need to pass roster into argument like name
        @name = name
        @roster ={} #because asking for empty roster at school name, both name and roster are initialized
    end

    #for above you can also write the below
    # def initialize(name, roster = {})
    #     @name = name
    #     @roster = roster

    def add_student(student_name, student_grade)
        #expect(@school.roster).to eq({10 => ["AC Slater"]})
        #call @school.roster is driver
        #student_grade to be key and "AC Slater" to be value
        #need to add in roster grade as key in hash
        self.roster #self.roster gives you the school and access the roster 
        #check to see if student_grade exists
        #if it doesnt exist, add it
        roster[student_grade] ||= [] #<find student_grade in roster, if not then add to hash and set key value to ampty array
        #then add the student_name to the roster
        roster[student_grade] << student_name
    end

    def grade(student_grade)
        @roster[student_grade] #to access roster in class, use @
    end

    def sort
        sorted_students = {} #creating hash to store the final sorted grade and name values
        roster.each do |grade, students|
            sorted_students[grade] = students.sort
        end
        sorted_students
    end

end