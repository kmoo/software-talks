require "movie_store/movie"

describe MovieStore::Movie do
  it "initializes with the expected values" do
    movie = described_class.new("Raiders of the Lost Ark", MovieStore::Movie::REGULAR)

    expect(movie).to be_a(MovieStore::Movie)
  end
end
