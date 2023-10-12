import movie_rental.Movie;
import movie_rental.Rental;
import movie_rental.Customer;

public class Main {
    public static void main(String[] args) {
        // Create some Movie objects
        Movie movie1 = new Movie("Movie 1", Movie.REGULAR);
        Movie movie2 = new Movie("Movie 2", Movie.NEW_RELEASE);
        Movie movie3 = new Movie("Movie 3", Movie.CHILDRENS);

        // Create some Rental objects
        Rental rental1 = new Rental(movie1, 3); // Regular movie, rented for 3 days
        Rental rental2 = new Rental(movie2, 2); // New release, rented for 2 days
        Rental rental3 = new Rental(movie3, 4); // Children's movie, rented for 4 days

        // Create a Customer object
        Customer customer = new Customer("John Doe");

        // Add rentals to the customer
        customer.addRental(rental1);
        customer.addRental(rental2);
        customer.addRental(rental3);

        // Generate and print the rental statement
        String statement = customer.statement();
        System.out.println(statement);
    }
}
