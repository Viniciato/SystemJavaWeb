package system.bean;
import java.util.ArrayList;

import javax.annotation.ManagedBean;

public class ProductsBean {
	private static ProductsBean instance;
	private ArrayList<Product> products = new ArrayList<>();
	
	public ProductsBean(){
		products.add(new Product("Maca", 2.3, "Maca da Argentina", 20));
		products.add(new Product("Pera", 2.3, "Pera do Paraguay", 10));
		products.add(new Product("Uva", 2.3, "Uva da Italia", 30));
		products.add(new Product("Laranja", 2.3, "Laranja da Alemanha", 40));
		products.add(new Product("Abacaxi", 2.3, "Abacaxi do Brasil", 10));
		products.add(new Product("Melancia", 2.3, "Melancia do Peru", 5));
	}
	
	public ArrayList<Product> all(){
		return this.products;
	}
	
	public void add(Product product){
		products.add(product);
	}
	
	public static synchronized ProductsBean getInstance(){
		if(instance == null)
			instance = new ProductsBean();
		return instance;
	}
}
