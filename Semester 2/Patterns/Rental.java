/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package programm;

/**
 *
 * @author Wanping
 */
public class Rental {
    private Movie movie;
    private int daysRented;
    public Rental(Movie newmovie, int newdaysRented) {
        movie = newmovie;
        daysRented = newdaysRented;
    }
    public int getDaysRented() {
        return daysRented;
    }
    public Movie getMovie() {
        return movie;
    }
    double getCharge() {
        return movie.getCharge(daysRented);
    }


    int getFrequentRenterPoints() {
        return movie.getFrequentRenterPoints(daysRented);
    } 
}
