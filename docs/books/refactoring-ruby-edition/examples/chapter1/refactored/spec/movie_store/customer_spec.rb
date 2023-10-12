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
      let(:movie1) { MovieStore::Movie.new("The Gooneys", MovieStore::Price::ChildrensPrice.new) }
      let(:rental1) { MovieStore::Rental.new(movie1, 5) }

      let(:movie2) { MovieStore::Movie.new("Bee Movie", MovieStore::Price::NewReleasePrice.new) }
      let(:rental2) { MovieStore::Rental.new(movie2, 2) }

      it "displays a statement with totals" do
        subject.add_rental(rental1)
        subject.add_rental(rental2)

        expect(subject.statement).to eq("Rental Record for Luke Moorman\n\tThe Gooneys\t4.5\n\tBee Movie\t6\nYour amount owed is 10.5\nYou earned 3 frequent renter points")
      end
    end
  end

  describe "#html_statement" do
    context "with no rentals" do
      it "displays a blank statement" do
        expect(subject.html_statement).to eq("<h1>Rentals for <em>Luke Moorman</em><h1><p>\n<p>You owe <em>0</em><p>\nOn this rental you earned <em>0</em> frequent renter points<p>")
      end
    end

    context "with rentals" do
      let(:movie) { MovieStore::Movie.new("The Gooneys", MovieStore::Price::ChildrensPrice.new) }
      let(:rental) { MovieStore::Rental.new(movie, 5) }

      it "displays a statement with totals" do
        subject.add_rental(rental)

        expect(subject.html_statement).to eq("<h1>Rentals for <em>Luke Moorman</em><h1><p>\n\tThe Gooneys: 4.5<br>\n<p>You owe <em>4.5</em><p>\nOn this rental you earned <em>1</em> frequent renter points<p>")
      end
    end
  end
end
