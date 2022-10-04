require "movie_store/customer"

describe MovieStore::Customer do
  subject { described_class.new("Luke Moorman") }
  describe "#initialize" do
    it "initializes with the expected values" do
      expect(subject).to be_a(MovieStore::Customer)
      expect(subject.name).to eq("Luke Moorman")
    end
  end

  describe "#statement" do
    context "with no rentals" do
      it "displays a blank statement" do
        expect(subject.statement).to eq("Rental Record for Luke Moorman\nYour amount owed is 0\nYou earned 0 frequent renter points")
      end
    end

    context "with rentals" do
      let(:movie) { MovieStore::Movie.new("The Gooneys", MovieStore::Movie::CHILDRENS) }
      let(:rental) { MovieStore::Rental.new(movie, 5) }

      it "displays a statement with totals" do
        subject.add_rental(rental)

        expect(subject.statement).to eq("Rental Record for Luke Moorman\n\tThe Gooneys\t4.5\nYour amount owed is 4.5\nYou earned 1 frequent renter points")
      end
    end
  end
end
