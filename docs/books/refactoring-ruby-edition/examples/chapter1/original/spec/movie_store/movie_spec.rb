require "movie_store/movie"

describe MovieStore::Movie do
  describe "#initialize" do
    it "initializes with the expected values" do
      movie = described_class.new("Raiders of the Lost Ark, Pt. II", MovieStore::Movie::NEW_RELEASE)

      expect(movie).to be_a(MovieStore::Movie)
      expect(movie.title).to eq("Raiders of the Lost Ark, Pt. II")
      expect(movie.price_code).to eq(1)
    end
  end
end
