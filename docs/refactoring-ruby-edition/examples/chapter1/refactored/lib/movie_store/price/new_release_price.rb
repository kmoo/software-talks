# Note, these examples are my personal notes for educational purposes as I learn through the book. The example is from "Refactoring: Ruby Edition" by Jay Fields, Shane Harvie, and Martin Fowler with Kent Beck
module MovieStore
  module Price
    class NewReleasePrice
      def charge(days_rented)
        days_rented * 3
      end
    end
  end
end
