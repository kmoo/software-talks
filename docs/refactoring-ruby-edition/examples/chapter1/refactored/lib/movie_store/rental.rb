# Note, these examples are my personal notes for educational purposes as I learn through the book. The example is from "Refactoring: Ruby Edition" by Jay Fields, Shane Harvie, and Martin Fowler with Kent Beck
module MovieStore
  class Rental
    attr_reader :movie, :days_rented

    def initialize(movie, days_rented)
      @movie, @days_rented = movie, days_rented
    end

    def charge
      movie.charge(days_rented)
    end

    def frequent_renter_points
      (movie.price_code == Movie::NEW_RELEASE && days_rented > 1) ? 2 : 1
    end
  end
end
