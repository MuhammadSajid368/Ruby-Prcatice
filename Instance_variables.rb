class Person
    def initialize(name,age)
        @name = name
        @age = age
    end
    def show
        puts @name
        puts @age
    end
end

Person.new("Sajid",15).show

class PersonDetail

    def initialize(name,age,about='mern stack developer')
        @name = name
        @age = age
        @about = about
    end
    def show
        puts @name
        puts @age
        puts @about
    end
end
PersonDetail.new('Ali Raza',22).show