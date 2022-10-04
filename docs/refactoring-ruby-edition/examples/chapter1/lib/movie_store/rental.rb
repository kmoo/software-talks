# Note, these examples are my personal notes for educational purposes as I learn through the book. The example is from "Refactoring: Ruby Edition" by Jay Fields, Shane Harvie, and Martin Fowler with Kent Beck
module MovieStore
  class Rental
    attr_reader :movie, :days_rented

    def initialize(movie, days_rented)
      @movie, @days_rented = movie, days_rented
    end
  end
end
