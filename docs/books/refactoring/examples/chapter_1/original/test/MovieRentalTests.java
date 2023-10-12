import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class MovieRentalTests {
    @Test
    public void testCustomerStatement() {
        Movie movie1 = new Movie("Movie 1", Movie.REGULAR);
        Movie movie2 = new Movie("Movie 2", Movie.NEW_RELEASE);
        Movie movie3 = new Movie("Movie 3", Movie.CHILDRENS);

        Rental rental1 = new Rental(movie1, 3);
        Rental rental2 = new Rental(movie2, 2);
        Rental rental3 = new Rental(movie3, 4);

        Customer customer = new Customer("John Doe");
        customer.addRental(rental1);
        customer.addRental(rental2);
        customer.addRental(rental3);

        String expectedStatement = "Rental Record for John Doe\n" +
            "\tMovie 1\t3.5\n" +
            "\tMovie 2\t6.0\n" +
            "\tMovie 3\t3.0\n" +
            "Amount owed is 12.5\n" +
            "You earned 3 frequent renter points";

        assertEquals(expectedStatement, customer.statement());
    }

    @Test
    public void testMoviePriceCode() {
        Movie movie = new Movie("Test Movie", Movie.NEW_RELEASE);
        assertEquals(Movie.NEW_RELEASE, movie.getPriceCode());
    }

    @Test
    public void testRentalDaysRented() {
        Movie movie = new Movie("Test Movie", Movie.REGULAR);
        Rental rental = new Rental(movie, 5);
        assertEquals(5, rental.getDaysRented());
    }
}
