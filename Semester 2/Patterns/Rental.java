class Rental {
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
	public double getCharge() {
		return movie.getCharge(daysRented);
	}
	public int getFrequentRenterPoints(int daysRented) {
		if ((getPriceCode() == Movie.NEW_RELEASE) && daysRented > 1)
			return 2;
		else
			return 1;
	}
}