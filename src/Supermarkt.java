
public class Supermarkt {
	
	public String product;
	public int amount = 1;
	public double price;
	
	public Supermarkt() {
		System.out.println("In constructor");
	}
	
	public Supermarkt(int amount, double price) {
		this.amount = amount;
		this.price = price;
		System.out.println("amount: " + amount + "price: " + price);
	}
	
	public double totalPrice(int amount, double price) {
		return amount * price;
	}
	
	public int add(int amount) {
		return amount;
	}
	
}
