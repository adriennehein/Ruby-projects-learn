class Vehicle
    def initialize(year=0)
        @year = year
        @wheels
        @lights = false
        @blinkers = "off"
        @speed = 0
        @name = ""
    end

    def show_year
        @year
    end

    def show_name
        @name
    end

    def lights
        @lights = !@lights
    end

    def light_status
        @lights
    end

    def blinker_status
        @blinkers
    end

    def blinkers_left
        @blinkers = "left"
    end

    def blinkers_right
        @blinkers = "right"
    end

    def blinkers_off
        @blinkers = "off"
    end

    def show_speed
        @speed
    end
    def info
        "This is a #{@year} #{@name}, its blinkers are #{@blinkers}, it's #{@lights} that the lights are on, and you are traveling at #{@speed}kph.  It also has #{@wheels} wheels, by the way."
    end
end


class Car < Vehicle
    def initialize(year=0)
        super
    end

    def wheels
        @wheels = 4
    end

    def honk
        "honk!"
    end

end

class Toyota < Car
    def initialize(year)
        super
        @year = year
        @name = "Toyota"
    end

    def honk
        "whoop!"
    end

    def accelerate
        @speed += 7
    end

    def decelerate
        @speed -= 5
    end
end

class Tata < Car
    def initialize(year)
        super
        @name = "Tata"
    end

    def honk
        "beep!"
    end

    def accelerate
        @speed += 2
    end

    def decelerate
        @speed -= 1.25
    end
end

class Tesla < Car
    def initialize(year)
        super
        @name = "Tesla"
    end

    def honk
        "Mario Theme"
    end

    def accelerate
        @speed += 10
    end

    def decelerate
        @speed -= 7
    end
end

class Garage
    def initialize
        @showroom = []
    end

    def showroom
        @showroom
    end

    def store(car)
        @showroom.push(car)
    end

    def retrieve(car)
        @showroom.delete(car)
    end

    def sort_year
        @sorted_by_year = @showroom.sort{|a, b| a.show_year <=> b.show_year}
    end

    def sort_name
        @sorted_by_name = @showroom.sort{|a, b| a.show_name <=> b.show_name}
    end

    def sort_both
        @sorted_by_both = @showroom.sort_by{|a| [a.show_name, a.show_year]}
    end
end

#
# tesla = Tesla.new(2038)
# tata = Tata.new(1974)
# toyota = Toyota.new(2003)
# gar = Garage.new
# gar.store(tesla)
# gar.store(tata)
# gar.store(toyota)
# p gar.sort_year
