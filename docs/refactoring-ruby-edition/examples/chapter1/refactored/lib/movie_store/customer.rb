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
      result = "Rental Record for #{@name}\n"

      @rentals.each do |element|
        # show figures for this rental
        result += "\t" + element.movie.title + "\t" + element.charge.to_s + "\n"
      end

      # add footer lines
      result += "Your amount owed is #{total_charge}\n"
      result += "You earned #{total_frequent_renter_points} frequent renter points"

      result
    end

    def html_statement
      result = "<h1>Rentals for <em>#{@name}</em><h1><p>\n"

      @rentals.each do |element|
        # show figures for this rental
        # LUKE NOTE: Looks like another bug, each should be element
        result += "\t" + element.movie.title + ": " + element.charge.to_s + "<br>\n"
      end

      # add footer lines
      result += "<p>You owe <em>#{total_charge}</em><p>\n"
      result += "On this rental you earned " +
        "<em>#{total_frequent_renter_points}</em> " +
        "frequent renter points<p>"

      result
    end
  private

    def total_charge
      @rentals.reduce(0) { |sum, rental| sum + rental.charge }
    end

    def total_frequent_renter_points
      @rentals.reduce(0) { |sum, rental| sum + rental.frequent_renter_points }
    end
  end
end
