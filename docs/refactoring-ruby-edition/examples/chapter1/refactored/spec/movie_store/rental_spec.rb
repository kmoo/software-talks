require "movie_store/rental"

describe MovieStore::Rental do
  describe "#initialize" do
    it "initializes with the expected values" do
      movie = MovieStore::Movie.new("A New Hope", MovieStore::Movie::REGULAR)

      rental = described_class.new(movie, 270)

      expect(rental).to be_a(MovieStore::Rental)
      expect(rental.movie.title).to eq("A New Hope")
      expect(rental.days_rented).to eq(270)
    end
  end
end
