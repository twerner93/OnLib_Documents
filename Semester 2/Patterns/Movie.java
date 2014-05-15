public class Movie {
    public static final int CHILDRENS = 2;
    public static final int REGULAR = 0;
    public static final int NEW_RELEASE = 1;
    private String title;
    private int priceCode;
    public Movie(String title, int priceCode) {
		title = title;
		setPriceCode(priceCode);
	}
    public int getPriceCode() {
		return _price.getPriceCode();
	}
	public void setPriceCode(int arg) {
		switch (arg) {
			case REGULAR:
				_price = new RegularPrice();
				break;
			case CHILDRENS:
				_price = new ChildrensPrice();
				break;
			case NEW_RELEASE:
				_price = new NewReleasePrice();
				break;
			default:
				throw new IllegalArgumentException("Incorrect Price Code");
		}
	}
	private Price _price;
    public String getTitle (){
        return title;
    };
	public double getCharge(int daysRented) {
		return _price.getCharge(daysRented);
	}
	public int getFrequentRenterPoints(int daysRented) {
		if ((getPriceCode() == Movie.NEW_RELEASE) && daysRented > 1)
			return 2;
		else
			return 1;
	}
	abstract class Price {
		abstract int getPriceCode();
		double getCharge(int daysRented) {
		double result = 0;
		switch (getPriceCode()) {
			case Movie.REGULAR:
				result += 2;
				if (daysRented > 2)
					result += (daysRented - 2) * 1.5;
				break;
			case Movie.NEW_RELEASE:
				result += daysRented * 3;
				break;
			case Movie.CHILDRENS:
				result += 1.5;
				if (daysRented > 3)
					result += (daysRented - 3) * 1.5;
				break;
			}
			return result;
		}
	}
	class ChildrensPrice extends Price {
		int getPriceCode() {
			return Movie.CHILDRENS;
		}
	}
	class NewReleasePrice extends Price {
		int getPriceCode() {
			return Movie.NEW_RELEASE;
		}
	}
	class RegularPrice extends Price {
		int getPriceCode() {
			return Movie.REGULAR;
		}
	}
}