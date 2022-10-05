# Note, these examples are my personal notes for educational purposes as I learn through the book. The example is from "Refactoring: Ruby Edition" by Jay Fields, Shane Harvie, and Martin Fowler with Kent Beck
module MovieStore
  class Customer
    attr_reader :name

    def initialize(name)
      @name = name
      @rentals = []
    end

    def add_rental(arg)
      @rentals << arg
    end

    def statement
      frequent_renter_points = 0
      result = "Rental Record for #{@name}\n"

      @rentals.each do |element|
        frequent_renter_points += element.frequent_renter_points

        # show figures for this rental
        result += "\t" + element.movie.title + "\t" + element.charge.to_s + "\n"
      end

      # add footer lines
      result += "Your amount owed is #{total_charge}\n"
      result += "You earned #{frequent_renter_points} frequent renter points"

      result
    end

  private

    def total_charge
      @rentals.inject(0) { |sum, rental| sum + rental.charge }
    end
  end
end
