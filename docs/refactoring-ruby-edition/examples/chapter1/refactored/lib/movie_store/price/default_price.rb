module MovieStore
  module Price
    module DefaultPrice
      def frequent_renter_points(_days_rented)
        1
      end
    end
  end
end
