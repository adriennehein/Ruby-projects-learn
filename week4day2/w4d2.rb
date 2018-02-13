#Parent class of Breakfast

class Breakfast
    def initialize(exp = 0)
       @hungry = false
       @pour_status = "Nothing has been poured."
       @fill_level = 100
       @name = ""
       @expiration = exp
    end

    def show_exp
        p @expiration
    end

    def show_name
        p @name
    end
#Turns hunger on and off
   def make_hungry
       if @hungry
           @hungry = false
       else
           @hungry = true
       end
   end
#Displays how much cereal is left in box
   def show_fill_level
       puts "You have #{@fill_level}g left in your #{@name} cereal box"
   end
#Changes the direction you're pouring
   def pour(direction)
       @pour_status = direction
       if @pour_status == "left"
           puts "You're pouring cereal to the left!!"
           @pour_status = "Pour completed."
       elsif @pour_status == "right"
           puts "You're pouring your cereal to the right."
           @pour_status = "Pour completed."
       end
   end

   def show_pour
       puts @pour_status
   end
end


#Cereal class inherits from Breakfast
class Cereal < Breakfast
  def initialize(exp = 0)
      super
      @expiration = exp
      @box_sides = 4
  end

  def show_sides
      p @box_sides
  end
end


#Classes for different brands that all inherit from Cereal

class Raisinbran < Cereal
    def initialize(exp)
        super
        @expiration = exp
        @name = "Raisinbran"
    end

    def empty
        @fill_level -= 10
    end

    def fill_box
        @fill_level += 7
    end

end

class Cheerios < Cereal
    def initialize(exp)
        super
        @expiration = exp
        @name = "Cheerios"
    end

    def empty
        @fill_level -= 2
    end

    def fill_box
        @fill_level += 1.25
    end


end

class Cinnasquares < Cereal
    def initialize(exp)
        super
        @expiration = exp
        @name = "Cinnasquares"
    end

    def show_info
        ("#@expiration, #@hungry, #@pour_status, #@fill_level")
    end

    def empty
        @fill_level -= 7
    end

    def fill_box
        @fill_level += 5
    end

end

#Creates all the instances of our cereals
my_breakfast = Breakfast.new
my_cereal = Cereal.new
my_raisinbran = Raisinbran.new(2015)
your_raisinbran = Raisinbran.new(1977)
my_cheerios = Cheerios.new(2020)
your_cheerios = Cheerios.new(2007)
my_cinnasquares = Cinnasquares.new(2018)
your_cinnasquares = Cinnasquares.new(1999)

#Displays all the attribute information
p my_cinnasquares.show_info

#Creates an array of all our cereal instances
cereals = [my_raisinbran, your_raisinbran, my_cheerios, your_cheerios, my_cinnasquares, your_cinnasquares]
#Sorts cereals by expiration dates
cereal_by_year = cereals.sort{|a, b| a.show_exp <=> b.show_exp}

p cereal_by_year
#Sorts cereals by class names
cereal_by_name = cereals.sort{|a, b| a.show_name <=> b.show_name}

p cereal_by_name
#Sorts cereals by class name, then expiration date
cereal_by_both = cereals.sort_by{|a| [a.show_name, a.show_exp]}

p cereal_by_both

#Turns hunger on and off and on again
p my_raisinbran.make_hungry
p my_raisinbran.make_hungry
p my_raisinbran.make_hungry
#Initiates pour direction and shows finished pour
my_cheerios.pour("left")
my_cheerios.show_pour
#Fill and empty ceral box
my_raisinbran.empty
my_raisinbran.show_fill_level

my_raisinbran.fill_box
my_raisinbran.show_fill_level

#TESTING
p my_cinnasquares.pour("right")
p my_cinnasquares.empty
p my_cinnasquares.empty
p my_cinnasquares.make_hungry
p my_cinnasquares.show_info
