# Note, these examples are my personal notes for educational purposes as I learn through the book. The example is from "Refactoring: Ruby Edition" by Jay Fields, Shane Harvie, and Martin Fowler with Kent Beck
require "movie_store/price/default_price"

module MovieStore
  module Price
    class RegularPrice
      include DefaultPrice

      def charge(days_rented)
        result = 2

        result += (days_rented - 2) * 1.5 if days_rented > 2

        result
      end
    end
  end
end
