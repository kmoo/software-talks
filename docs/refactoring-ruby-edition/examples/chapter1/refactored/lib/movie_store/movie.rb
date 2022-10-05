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
    attr_accessor :price_code

    def price_code=(value)
      @price_code = value
      @price = case price_code
               when REGULAR
                 Price::RegularPrice.new
               when NEW_RELEASE
                 Price::NewReleasePrice.new
               when CHILDRENS
                 Price::ChildrensPrice.new
              end
    end

    def initialize(title, the_price_code)
      @title, self.price_code = title, the_price_code
    end

    def charge(days_rented)
      @price.charge(days_rented)
    end

    def frequent_renter_points(days_rented)
      (price_code == Movie::NEW_RELEASE && days_rented > 1) ? 2 : 1
    end
  end
end