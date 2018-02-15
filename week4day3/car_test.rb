require 'rspec'
require_relative 'car'

describe "Vehicle" do
    it "has to be real" do
        a_vehicle = Vehicle.new
        expect{a_vehicle}.to_not raise_error
    end

    it "lights are off" do
        a_vehicle = Vehicle.new
        expect(a_vehicle.light_status).to be(false)
    end

    it "can turn lights on" do
        a_vehicle = Vehicle.new
        a_vehicle.lights
        expect(a_vehicle.light_status).to be(true)
    end

    it "blinkers are off" do
        a_vehicle = Vehicle.new
        expect(a_vehicle.blinker_status).to eq ("off")
    end

    it "blinks are left" do
        a_vehicle = Vehicle.new
        a_vehicle.blinkers_left
        expect(a_vehicle.blinker_status).to eq("left")
    end

    it "blinks are right" do
        a_vehicle = Vehicle.new
        a_vehicle.blinkers_right
        expect(a_vehicle.blinker_status).to eq("right")
    end

    it "speed is 0" do
        expect(Vehicle.new.show_speed).to eq(0)
    end

    it "returns a sentence" do
        a_vehicle = Vehicle.new
        expect(a_vehicle.info).to be_a String
    end
end

describe "Car" do
    it "has to be real" do
        a_car = Car.new
        expect{a_car}.to_not raise_error
    end

    it "has wheels" do
        expect{Car.new.wheels}.to_not raise_error
        expect(Car.new.wheels).to be_a Numeric
    end

    it "has four wheels" do
        expect(Car.new.wheels).to eq(4)
    end

    it "honks" do
        expect(Car.new.honk).to be_a String
        expect(Car.new.honk).to eq "honk!"
    end


end

describe "Toyota" do

    it "Toyota is real" do
        toyota_car = Toyota.new(2018)
        expect{toyota_car}.to_not raise_error
    end

    it "does whoop" do
        toyota_car = Toyota.new(2018)
        expect(toyota_car.honk).to eq "whoop!"
    end

    it "accelerates 7" do
        toyota_car = Toyota.new(2076)
        toyota_car.accelerate
        expect(toyota_car.show_speed).to eq(7)
    end

    it "decelerates 5" do
        toyota_car = Toyota.new(6)
        toyota_car.accelerate
        toyota_car.decelerate
        expect(toyota_car.show_speed).to eq(2)
    end
end

describe "Tata" do

    it "Tata is real" do
        tata_car = Tata.new(1999)
        expect{tata_car}.to_not raise_error
    end

    it "does beep" do
        expect(Tata.new(1999).honk).to eq "beep!"
    end

    it "accelerates 2" do
        tata_car = Tata.new(2076)
        tata_car.accelerate
        expect(tata_car.show_speed).to eq(2)
    end

    it "decelerates 1.25" do
        tata_car = Tata.new(6)
        tata_car.accelerate
        tata_car.decelerate
        expect(tata_car.show_speed).to eq(0.75)
    end
end

describe "Tesla" do

    it "Tesla is real" do
        tesla_car = Tesla.new(2030)
        expect{tesla_car}.to_not raise_error
    end

    it "does beep" do
        expect(Tesla.new(2040).honk).to eq "Mario Theme"
    end

    it "accelerates 10" do
        tesla_car = Tesla.new(2076)
        tesla_car.accelerate
        expect(tesla_car.show_speed).to eq(10)
    end

    it "decelerates 7" do
        tesla_car = Tesla.new(6)
        tesla_car.accelerate
        tesla_car.decelerate
        expect(tesla_car.show_speed).to eq(3)
    end
end

describe "Garage" do
    it "garage exists and has zero cars" do
        gar = Garage.new
        expect{gar}.to_not raise_error
        expect(gar.showroom.length).to be(0)
    end

    it "added car to garage" do
        tesla_car = Tesla.new(2041)
        gar = Garage.new
        gar.store(tesla_car)
        expect(gar.showroom.length).to be(1)
    end

    it "removed car from garage" do
        tesla_car = Tesla.new(2041)
        gar = Garage.new
        gar.store(tesla_car)
        gar.retrieve(tesla_car)
        expect(gar.showroom.length).to be(0)
    end

    it "is sorted by year" do
        tesla = Tesla.new(2038)
        tata = Tata.new(1974)
        toyota = Toyota.new(2003)
        gar = Garage.new
        gar.store(tesla)
        gar.store(tata)
        gar.store(toyota)

        expect(gar.sort_year).to start_with(tata).and end_with(tesla)

    end

    it "is sorted by name" do
        tesla = Tesla.new(2038)
        tata = Tata.new(1974)
        toyota = Toyota.new(2003)
        gar = Garage.new
        gar.store(tesla)
        gar.store(tata)
        gar.store(toyota)

        expect(gar.sort_name).to start_with(tata).and end_with(toyota)

    end

    it "is sorted by name then year" do
        tesla1 = Tesla.new(2038)
        tata1 = Tata.new(1974)
        toyota1 = Toyota.new(2003)
        tesla2 = Tesla.new(1955)
        tata2 = Tata.new(4040)
        toyota2 = Toyota.new(1776)
        gar = Garage.new
        gar.store(tesla1)
        gar.store(tata1)
        gar.store(toyota1)
        gar.store(tesla2)
        gar.store(tata2)
        gar.store(toyota2)

        expect(gar.sort_both).to start_with(tata1).and end_with(toyota1)

    end
end
