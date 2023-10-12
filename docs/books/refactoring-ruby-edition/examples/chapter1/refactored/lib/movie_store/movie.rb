# Note, these examples are my personal notes for educational purposes as I learn through the book. The example is from "Refactoring: Ruby Edition" by Jay Fields, Shane Harvie, and Martin Fowler with Kent Beck
require "movie_store/price/childrens_price"
require "movie_store/price/new_release_price"
require "movie_store/price/regular_price"

module MovieStore
  class Movie
    REGULAR = 0
    NEW_RELEASE = 1
    CHILDRENS = 2

    attr_reader :title
    attr_writer :price

    def initialize(title, price)
      @title, @price = title, price
    end

    def charge(days_rented)
      @price.charge(days_rented)
    end

    def frequent_renter_points(days_rented)
      @price.frequent_renter_points(days_rented)
    end
  end
end