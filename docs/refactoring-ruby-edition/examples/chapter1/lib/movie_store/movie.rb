# Note, these examples are my personal notes for educational purposes as I learn through the book. The example is from "Refactoring: Ruby Edition" by Jay Fields, Shane Harvie, and Martin Fowler with Kent Beck
module MovieStore
  class Movie
    REGULAR = 0
    NEW_RELEASE = 1
    CHILDRENS = 2

    attr_reader :title
    attr_accessor :price_code

    def initialize(title, price_code)
      @title, @price_code = title, price_code
    end
  end
end