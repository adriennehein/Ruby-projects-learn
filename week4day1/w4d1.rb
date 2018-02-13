#Loop 1 to 20
=begin
x = 0

20.times do
    x+=1
    puts x
end

x=0

until x==20 do
    x+=1
    puts x
end

for i in 1..20 do
    puts i
end

(1..20).each do |i|
    puts i
end

x= 20

20.times do
    puts x
    x-=1
end


#Pick Num

puts "Pick a number"
num = gets.chomp.to_i

if 1 < num && num < 10
    puts "Valid"
else
    puts "Invalid"
end

#FizzBuzz

for i in 1..100 do
    if i % 3 == 0 && i % 5 == 0
        puts "FizzBuzz"
    elsif i % 3 == 0
        puts "Fizz"
    elsif i % 5 == 0
        puts "Buzz"
    else
        puts i
    end
end

#Sum num

def sumnum(a, b)
    puts a + b
end

#isEven
 def iseven(a)
     if a % 2 == 0
         puts true
     else
         puts false
     end
 end

#word array

words = ["gourd", "squash", "cake", "spice"]

words.each() do |el|
    puts el.upcase
end

#other method

def method1
    return "doneso"
end

def meth
    puts "if you do this, you will be #{method1}"
end

#Date checker

puts "Enter a month:"
month = gets.chomp.to_i

if month > 0 && month <= 12
    puts "Yep, that's a month"
else
    puts "Nope, not a month.  Nice tryyy"
end

puts "Enter a day of month:"
day = gets.chomp.to_i

def odddays(month)
    if [1,3,5,7,8,10,12].include?(month)
        return true
    end
end

def evendays(month)
    if [4,6,9,11].include?(month)
        return true
    end
end


if odddays(month) && day <= 31
    puts "Valid day of month"
elsif evendays(month) && day <= 30
    puts "Valid day of month"
elsif month == 2 && day <= 28
    puts "February day, huh?"
else
    puts "Yeah, no."
end

puts "What year is it?"
year = gets.chomp.to_i

if year.to_s.length > 4
    puts "Really, thinking into the future, huh?"
elsif year.to_s.length == 4
    puts "That's a year at some point"
else
    puts "Historian, huh?"
end

puts "#{month}/ #{day}/ #{year} is the day you will die."


#rps game

puts "Player ONE: Rock, paper, or scintillators?!"
p1 = gets.chomp.downcase

puts "Player TWO: YOUR MOVE!!!"
p2 = gets.chomp.downcase

def rps(p1, p2)
    if p1 == "rock"
        rps_rock(p2)
    elsif p1 == "paper"
        rps_paper(p2)
    elsif p1 == "scintillators"
        rps_scintillators(p2)
    else
        puts "Player one? Invalid entry! You ALLLLLL LOOOOOSSSEEEE"
    end
end

def rps_rock(p2)
    if p2 == "rock"
        puts "TIE!!!"
    elsif p2 =="paper"
        puts "Player two WINS!"
    elsif p2 == "scintillators"
        puts "Player two got SMASHED!!!"
    else
        puts "Player two ruined EVERYTHING!"
    end
end

def rps_paper(p2)
    if p2 == "rock"
        puts "You've been covered, player two!"
    elsif p2 == "paper"
        puts "Is it business time? 'Cause it's a tiiiieee"
    elsif p2 == "scintillators"
        puts "Player two cut up the competition!"
    else
        puts "Game overed!"
    end
end

def rps_scintillators(p2)
    if p2 == "rock"
        puts "SMASH UP PLAYER ONE!"
    elsif p2 == "paper"
        puts "You just got cut, player two."
    elsif p2 == "scintillators"
        puts "No slices for you."
    else
        puts "Game overed!"
    end
end

rps(p1,p2)


movies = ["the forbidden zone","the dead zone","rocky horror picture show","hedwig and the agry inch","clue","priscilla: queen of the desert", "wristcutters","cabin in the woods", "velvet goldmine","not another gay movie"]

top3 = []

top3.push(movies[2],movies[3],movies[5])

puts "my top 3 are #{top3}"
puts "the length is #{movies.length}"
=end


def same(user, psw)
  if user == psw
      return true
  else
      return false
  end
end

def long_enough(entry)
    if entry.length < 6
        return false
    else
        return true
    end
end

def does_not_contain_special(entry)
    if (entry.include? "$") || (entry.include? "!") || (entry.include? "#")
        return false
    else
        return true
    end
end

def contain_special(entry)
    if (entry.include? "$") || (entry.include? "!") || (entry.include? "#")
        return true
    else
        return false
    end
end

def has_digit(entry)
    if (entry.count('0123456789')) > 0
        return true
    else
        return false
    end
end

def has_upper_and_lowercase(entry)
    if entry =~ /[A-Z]/
        return true
    else
        return false
    end
end

def create_user(user,psw)
    if long_enough(user) && does_not_contain_special(user)
        puts "User Name Accepted"
    else
        puts "User Name Invalid"
        return
    end

    if long_enough(psw) && contain_special(psw) && has_digit(psw) && has_upper_and_lowercase(psw)
        puts "Password Accepted"
    else
        puts "Password Unnaceptable"
        return
    end

    if same(user,psw)
        puts "INVALID. Username and password cannot be equal."
        return
    else
        puts "Great job, you must be so proud"
    end
end


create_user("hermione#", "beefwoman")
create_user("hermione", "beef#woman")
create_user("harrypotter", "ronshirt!")
create_user("ronsronshirt", "spider5onme!")
create_user("forkinthegarbage", "beli3ve!ntheYES")
