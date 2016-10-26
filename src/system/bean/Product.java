package system.bean;

public class Product {
	private String name;
	private double price;
	private String description;
	private int amount;
	
	public Product(String name, double price, String description, int amount){
		this.name = name;
		this.price = price;
		this.description = description;
		this.amount = amount;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	public int getAmount() {
		return amount;
	}
	
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
