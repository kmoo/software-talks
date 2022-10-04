require "movie_store/customer"

describe MovieStore::Customer do
  it "initializes with the expected values" do
    customer = described_class.new("Luke Moorman")

    expect(customer).to be_a(MovieStore::Customer)
  end
end
